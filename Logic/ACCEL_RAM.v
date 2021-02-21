`timescale 1ns / 1ps
/*
    This file is part of A600_ACCEL_RAM originally designed by
    Paul Raspa 2020.

    A600_ACCEL_RAM is free software: you can redistribute it and/or
    modify it under the terms of the GNU General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    A600_ACCEL_RAM is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with A600_ACCEL_RAM. If not, see <http://www.gnu.org/licenses/>.

    Revision 0.0 - 17.09.2020:
    Initial revision.
    
    Revision 1.0 - 07.01.2021:
    Updated for revised PCB layout.
*/

module ACCEL_RAM(

    // CPU
    input RESET,
    input HALT,
    
    input CLK_E,
    input CLK_7,
    input CLK_ACCEL,
    
    input AS_ACCEL,
    output AS_7,
       
    input DTACK_7,
    output DTACK_ACCEL,
    
    //--- BR_7 Input if 3 Wire Bus Arbitration would be used
    //input BR_7,
    //---
    output BR_7,
    input BG_7,
    output BGACK_7,

    input RW,
    input LDS,
    input UDS,
    
    // RAM
    output r_RAM_CE2,
    output reg r_RAM_CE_n,
    output reg r_RAM_OE_n,
    output reg r_RAM_LB_n,
    output reg r_RAM_UB_n,
    output reg r_RAM_WR_n,
    
    // LEDs
    output ACCEL_ACTIVE,
    output MAPROM_ACTIVE,
    
    // SPAREs
    output [3:0] IO_PORT,
    
    // Address bus
    input [23:19] ADDRESS,
    input A2,
    output _A2

    );
    
// --- Control signals

wire DS = !(LDS || UDS);
wire ACCESS = (!AS_ACCEL && RESET);
wire OVERLAY_RANGE = ({ADDRESS[23:19]} == {5'h00}) && ACCESS;                                   // 0x000000 - 0x0EFFFF
wire CIA_RANGE = ({ADDRESS[23:19]} == {5'h17}) && ACCESS;                                       // 0xBF0000 - 0xBFFFFF
wire SLOWRAM_RANGE = ({ADDRESS[23:19]} >= {5'h18} && {ADDRESS[23:19]} <= {5'h1A}) && ACCESS;    // 0xC00000 - 0xD7FFFF
wire MAPROM_RANGE = ({ADDRESS[23:19]} == {5'h1F}) && ACCESS;                                    // 0xF80000 - 0xFFFFFF

// --- Bus Master Control

// This implements 3-wire handshaking according to Figure 5-13. 3-Wire Bus Arbitration Cycle Flowchart

/*
reg r_acceleratorActive = 1'b0;
reg r_busRequested = 1'b0;

always @(posedge CLK_7 or negedge RESET) begin : BUS_MASTER_CONTROL_3WIRE
    
    if (!RESET) begin
        r_acceleratorActive <= 1'b0;
        r_busRequested <= 1'b1;
    end else begin
    
        if (BG_7 == 1'b0 && AS_ACCEL == 1'b1 && r_acceleratorActive == 1'b0) begin
            r_acceleratorActive <= 1'b1;
            r_busRequested <= 1'b0;
        end
    end
end

assign BR_7 = (r_busRequested) ? 1'b0 : 1'b1;
assign BGACK_7 = (r_acceleratorActive) ? 1'b0 : 1'b1;
assign ACCEL_ACTIVE = r_acceleratorActive;
*/

// This implements 2-wire handshaking according to Figure 5-14. 2-Wire Bus Arbitration Cycle Flowchart

assign BR_7 = 1'b0;
assign BGACK_7 = 1'bZ;
assign ACCEL_ACTIVE = (RESET & !BG_7);

// --- CIA Access Detection

reg r_overlay = 1'b0;

always @(posedge AS_ACCEL or negedge RESET) begin : CIA_ACCESS

    // detect if the CIA access has occured after reset to determine when ROM overlay is disbaled

    if (!RESET) begin
        r_overlay <= 1'b0;
    end else begin
    
        if (CIA_RANGE == 1'b1) begin
            r_overlay <= 1'b1;
        end
    end
end

// --- MAPROM Control

reg r_initialiseColdBoot = 1'b0;
reg r_mapROMWritten = 1'b0;
reg r_mapROMEnabled = 1'b0;
reg [17:0] r_addressCounter = 18'd0;
reg [19:0] r_clockCounter = 20'd0;

always @(posedge DS or negedge RESET) begin : MAPROM_CONTROL

    // count the number of MAPROM_RANGE word sized writes to determine if 512KBytes have been written

    if (!RESET) begin
        r_addressCounter <= 18'd0;
        
        if (&r_clockCounter) begin
            r_mapROMWritten <= 1'b0;
            r_mapROMEnabled <= 1'b0;
        end else begin
        
            if (r_mapROMWritten == 1'b1) begin
                r_mapROMEnabled <= 1'b1;
            end
        end
    end else begin
    
        if (MAPROM_RANGE == 1'b1 && !RW) begin
            if (!r_initialiseColdBoot) begin
                r_mapROMWritten <= 1'b0;
                r_mapROMEnabled <= 1'b0;
                r_initialiseColdBoot <= 1'b1;
            end
        
            r_addressCounter <= r_addressCounter + 18'd1;
            
            if (&r_addressCounter) begin
                r_mapROMWritten <= 1'b1;
            end
        end
    end
end

assign MAPROM_ACTIVE = r_mapROMEnabled;

// --- MAPROM Reset Control

wire CLOCK_COUNTER_EXPIRED = &r_clockCounter;

always @(posedge CLK_E or posedge RESET) begin : MAPROM_RESET_CONTROL

    // count E_CLK cycles for approx. 1 second to clear MapROM latch when /RESET is asserted

    if (RESET) begin
        r_clockCounter <= 20'd0;
    end else begin
    
        if (!CLOCK_COUNTER_EXPIRED) begin
            r_clockCounter <= r_clockCounter + 20'd1;
        end
    end
end

// --- RAM Control

assign r_RAM_CE2 = 1'b1;
reg r_RAMCycleComplete = 1'b0;
reg [1:0] r_stRAMControl = 2'b00;

always @(negedge CLK_ACCEL or posedge AS_ACCEL) begin : RAM_CONTROL

    if (AS_ACCEL) begin
        r_RAM_CE_n <= 1'b1;
        r_RAM_OE_n <= 1'b1;
        r_RAM_LB_n <= 1'b1;
        r_RAM_UB_n <= 1'b1;
        r_RAM_WR_n <= 1'b1;
        r_RAMCycleComplete <= 1'b0;
        r_stRAMControl <= 2'b00;
    end else begin

        case (r_stRAMControl)

            2'b00: begin
                if (SLOWRAM_RANGE == 1'b1) begin
                    r_RAM_CE_n <= 1'b0;
                    r_stRAMControl <= 2'b01;
                end
                
                if (MAPROM_RANGE == 1'b1) begin
                    r_RAM_CE_n <= 1'b0;
                    r_stRAMControl <= 2'b10;
                end
            end

            2'b01: begin
                // Read & Write Cycle for SLOW RAM space
                if (LDS == 1'b0 || UDS == 1'b0) begin
                    r_RAM_OE_n <= (RW) ? 1'b0 : 1'b1;
                    r_RAM_LB_n <= LDS;
                    r_RAM_UB_n <= UDS;
                    r_RAM_WR_n <= (!RW) ? 1'b0 : 1'b1;
                    
                    //r_stRAMControl <= 2'b11;
                    
                    // acknowledge RAM cycle complete directly to improve performance
                    
                    r_stRAMControl <= 2'b00;
                    r_RAMCycleComplete <= 1'b1;

                end
            end
            
            2'b10: begin
                // Read & Write Cycle for MAPROM space
                if (LDS == 1'b0 || UDS == 1'b0) begin
                    r_RAM_OE_n <= (RW && r_mapROMEnabled) ? 1'b0 : 1'b1;
                    r_RAM_LB_n <= LDS;
                    r_RAM_UB_n <= UDS;
                    r_RAM_WR_n <= (!RW && !r_mapROMWritten) ? 1'b0 : 1'b1;

                    //r_stRAMControl <= 2'b11;
                    
                    // acknowledge RAM cycle complete directly to improve performance
                    
                    r_stRAMControl <= 2'b00;
                    r_RAMCycleComplete <= 1'b1;

                end
            end

            2'b11: begin
                // DTACK Cycle
                r_RAMCycleComplete <= 1'b1;
            end
            
            default:
                r_stRAMControl <= 2'b00;
        
        endcase
    end
end

// Assign directly _A2 to A2. Address line A2 for the RAM is routed through the CPLD for
// simple PCB routing.
assign _A2 = A2;

// --- Accelerator

reg r_delayedMB_AS_n = 1'b1;
reg r_fastCPU_DTACK_n = 1'b1;
reg [1:0] r_slowCPU_DTACK_n = 2'b11;

// Shift /AS_ACCEL into the 7MHz clock domain gated by SLOWRAM_RANGE | MAPROM_RANGE 
// (AS_7 is not asserted during internal cycles).
always @(posedge CLK_7 or posedge AS_ACCEL) begin : AS_DOMAIN_SYNC
    
    if (AS_ACCEL == 1'b1) begin
        r_delayedMB_AS_n <= 1'b1;
    end else begin
    
        r_delayedMB_AS_n <= AS_ACCEL || SLOWRAM_RANGE ||
                            ((MAPROM_RANGE && r_mapROMEnabled /* read cycle */) || (MAPROM_RANGE && !RW /* write cycle */));
                            // ||
                            //(OVERLAY_RANGE && !r_overlay && r_mapROMEnabled);
    end
end

// Due to how /DTACK is handled for internal space accesses by GAYLE, /DTACK
// needs to be delay 2 clock cycles to ensure /AS is not asserted to soon after
// the previous cycle. This does not significantly affect performance.
always @(negedge CLK_7 or posedge DTACK_7) begin : DTACK_DOMAIN_SYNC
    
    if (DTACK_7 == 1'b1) begin
        r_slowCPU_DTACK_n <= 2'b11;
    end else begin
    
        r_slowCPU_DTACK_n[0] <= DTACK_7;
        r_slowCPU_DTACK_n[1] <= r_slowCPU_DTACK_n[0];   // 40MHz
        //r_slowCPU_DTACK_n[1] <= DTACK_7;              // 30MHz  
    end
end

// Generate a fast DTACK for fast accelerator space resources.
always @(posedge CLK_ACCEL or posedge AS_ACCEL) begin : FAST_DTACK_CONTROL
    
    if (AS_ACCEL == 1'b1) begin
        r_fastCPU_DTACK_n <= 1'b1;
    end else begin

        r_fastCPU_DTACK_n <= ~(SLOWRAM_RANGE && r_RAMCycleComplete) &&
                             ~((MAPROM_RANGE && r_RAMCycleComplete && r_mapROMEnabled) || (MAPROM_RANGE && r_RAMCycleComplete && !RW));
                             // &&
                             //~(OVERLAY_RANGE && !r_overlay && r_mapROMEnabled);
    end
end

assign DTACK_ACCEL = (|r_slowCPU_DTACK_n && r_fastCPU_DTACK_n) ? 1'b1 : 1'b0;
assign AS_7 = (HALT) ? (r_delayedMB_AS_n) : 1'bZ;

// --- Debug Interfaces

assign IO_PORT[0] = 1'b0;
assign IO_PORT[1] = 1'b0;
assign IO_PORT[2] = 1'b0;
assign IO_PORT[3] = 1'b0;

endmodule