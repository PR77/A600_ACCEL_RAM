# A600_ACCEL_RAM
Design attempt for an Amiga 600 over CPU (PLCC) 68000 Accelerator including 1.5MB FastRAM (... or is it SlowRAM) and 0.5MB MapROM support.

# Warning
This design has not been compliance tested and will not be. It may cause damage to your A600. I take no responsibility for this. I accept no responsibility for any damage to any equipment that results from the use of this design and its components. IT IS ENTIRELY AT YOUR OWN RISK!

# Overview
The main purpose of this design was to develop a simple, affordable and efficient Accelerator, FastRAM and MapROM support device for the Amiga 600. The main components of the design and the CPU (MC68SEC000), CPLD (9572) and SRAM (CY62167G). There are the odd LEDs for status and some IO Pins for currently unplanned additions. As discovered in my A500 Accelerator the MC68SEC000 can be aggressively clocked and this design does not detour from that.

### Appearance
Nice 3D model:
![3D Model](/Images/A600_ACCEL_RAM.png)

Installed on A600 Motherboard:
![Actual Hardware](/Images/Actual_Hardware.jpg)

Mounting holes on the Accelerator PCB match with the HDD cradle and accommodate a M2 screw to provide stress relief for the PLCC68 socket. SukkoPera has a great guide on how to prepare the PLCC68 socket as some small modifications are required. His how to guide is linked here;

https://github.com/SukkoPera/OpenAmiga600FastRamExpansion/blob/master/SocketRework.md

### Performance
Testing has shown that the A600 system is fairly stable at 40MHz. Slower crystals can be used if stability is an issue (let me know if you run into issues). I've had the classic Amiga Juggler running for 48 Hours without any issues. Classic SysInfo shows @ 40MHz (with MapROM active);

* Drystones: 3447
* MIPS: 3.59
* Comment: Only Amiga Makes.. 

![SysInfo Speed](/Images/SysInfo_Speed.jpg)

IDE (via GAYLE's scsi.device) also shows a nice speed improvement with a CF Card:

![SysInfo Drive](/Images/SysInfo_Drive.jpg)

### BOM
For those wanting to build their own hardware, here is the BOM;

| Reference(s)  | Value           | Footprint                                        |
|---------------|-----------------|--------------------------------------------------|
|C1             | 100n            |Capacitors_SMD:C_0805
|C2             | 100n            |Capacitors_SMD:C_0805
|C3             | 100n            |Capacitors_SMD:C_0805
|C4             | 100n            |Capacitors_SMD:C_0805
|C6             | 10u             |Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Hand
|C7             | 10u             |Capacitors_Tantalum_SMD:CP_Tantalum_Case-R_EIA-2012-12_Hand
|C8             | 100n            |Capacitors_SMD:C_0805
|C9             | 100n            |Capacitors_SMD:C_0805
|C10            | 100n            |Capacitors_SMD:C_0805
|D1             | LED             |LEDs:LED_0805
|D2             | LED             |LEDs:LED_0805
|J1             | JTAG            |Connector:Conn_01x06_Male","Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm
|J2 (not loaded)| SPARE1          |Connector:Conn_01x03_Male","Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm
|J3 (not loaded)| SPARE2          |Connector:Conn_01x03_Male","Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm
|R1             | 10K             |Resistors_SMD:R_0805
|R3             | 10K             |Resistors_SMD:R_0805
|R4             | 10K             |Resistors_SMD:R_0805
|R5             | 10K             |Resistors_SMD:R_0805
|R6             | 10K             |Resistors_SMD:R_0805
|R7             | 10K             |Resistors_SMD:R_0805
|R8 (not loaded)| 10K             |Resistors_SMD:R_0805
|R9             | 10K             |Resistors_SMD:R_0805
|R10            | 680R            |Resistors_SMD:R_0805
|R11            | 680R            |Resistors_SMD:R_0805
|U1             | SOCKET          |PLCC-68_THT-SocketUpsideDown
|U2             | MC68SEC000      |Housings_QFP:LQFP-64_14x14mm_Pitch0.8mm
|U3             | CY62167G        |Housings_SSOP:TSOP-I-48_18.4x12mm_Pitch0.5mm
|U4             | XC9572VQ44      |Housings_QFP:LQFP-44_10x10mm_Pitch0.8mm
|U5             | LM1117-3.3      |TO_SOT_Packages_SMD:SOT-223-3_TabPin2
|X1             | CXO_DIP14       |Oscillators:Oscillator_DIP-14

### CPU
Regarding the CPU, I purchased from here (I get nothing from this. The parts I received were new and legitimate so I wanted to share the source);

https://www.ebay.de/itm/MC68SEC000FU20-IC-MPU-M680X0-20MHZ-64QFP-NEW/311524970603?hash=item488855d06b:g:qe0AAOSwYIhWleGF

### LED Indicators
2 LED indicators are present:

* ACCEL ACTIVE: This indicates that a Bus Request (BR) was requested by the MC68SEC000 Accelerator CPU and Granted (/BG) by the Amiga's MC68000 CPU.
* MAPROM ACTIVE: After writing a 512K MapROM image to the Accelerator, the next subsequent Reset will active this image. This LED indicates that the MapROM image is in use.

### FastRAM (... or is it SlowRAM)
To simplify the design and keep the CPLD pin count down, I decided not to use traditional FastRAM, rather use SlowRAM which is automatically mapped by the Amiga is valid memory is detected between 0xC00000 - 0xD7FFFF. In this range 1.5MB is available. For this memory range, the Accelerator performs the address decoding and subsequent /DTACK cycle. /AS is not asserted on the Amiga, thus the speed of memory cycles in this range is equivalent to that of FastRAM.

### MapROM
Of the 2MB RAM available, 1.5MB is allocated to SlowRAM and the remainder is allocated for MapROM. MapROM simply works by routing write cycle to 0xF8xxxx directly to the Accelerators RAM. Once enough write cycles are detected (262144 WORD writes), the MapROM write status is latched. After a subsequent Reset, memory accesses to 0xF8xxxx are directly routed to the Accelerators RAM (at full speed) and /AS is not asserted on the Amiga.


