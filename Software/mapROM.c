#include <clib/dos_protos.h>
#include <clib/exec_protos.h>

#include <proto/dos.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "Helpers.h"

/*****************************************************************************/
/* Macros ********************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Defines *******************************************************************/
/*****************************************************************************/

#define LOOP_TIMEOUT        (ULONG)10000
#define KICKSTART_256K      (ULONG)(256 * 1024)
#define KICKSTART_512K      (ULONG)(512 * 1024)

/*****************************************************************************/
/* Types *********************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Globals *******************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Prototypes ****************************************************************/
/*****************************************************************************/

int main(int argc, char **argv);

/*****************************************************************************/
/* Local Code ****************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Main Code *****************************************************************/
/*****************************************************************************/
int main(int argc, char **argv)
{
    struct FileInfoBlock myFIB;
    BPTR fileHandle = 0L;

    printf("\nMapROM Tool For A600_ACCEL_RAM - https://github.com/PR77/A600_ACCEL_RAM\n");
    printf("Developed By: Paul Raspa (PR77), Revision 1.0.0, 2020.10.20\n");

    /* Check if application has been started with correct parameters */
    if (argc <= 1)
    {
        printf("usage: MapROM <option> <filename>\n");
        printf(" -i\tMap Internal ROM\n");
        printf(" -f\tMap External ROM <filename>\n");
        exit(RETURN_FAIL);
    }
        
    while ((argc > 1) && (argv[1][0] == '-'))
    {
        switch (argv[1][1])
        {
            case 'i':
            case 'I':
            {
                struct Resident *myResident;
                APTR sourceAddress, destinationAddress;
                ULONG writeWordCounter = 0;
                UBYTE progressIndicator = 0;

                myResident = FindResident("exec.library");
    
                if (!myResident)
                {
                    printf("exec.library not found ... Is this even an Amiga?!?\n");
                    break;
                }

                printf("\nFound Resident ROMTAG:\n");
                printf("Name: %s\n", myResident->rt_Name);
                printf("ID String: %s\n", myResident->rt_IdString);
                
                sourceAddress = (ULONG)0x00F80000;
                destinationAddress = (ULONG)0x00F80000;
                
                printf("Writing MapROM ... SRC: 0x%X, DEST: 0x%X\n\n", sourceAddress, destinationAddress);
                
                do {
                    ((UWORD *)destinationAddress)[writeWordCounter] = ((UWORD *)sourceAddress)[writeWordCounter];
                    writeWordCounter++;
                    
                    if ((writeWordCounter % 4096) == 0)
                    {
                        progressIndicator++;
                        printProgress(progressIndicator, 64);
                    }

                } while (writeWordCounter < (KICKSTART_512K / 2));
                
                printf("Done ... Warm Reboot needed to take effect\n");
            }
            break;
            
            case 'f':
            case 'F':
            {
                if ((argc > 2) && argv[2])
                {
                    APTR pBuffer;
                    ULONG fileSize;
                    
                    tReadFileHandler readFileProgram = getFileSize(argv[2], &fileSize);
                    
                    if (readFileOK == readFileProgram)
                    {
                        readFileProgram = readFileIntoMemoryHandler(argv[2], fileSize, &pBuffer);
                        
                        if (readFileOK == readFileProgram)
                        {
                            if (fileSize == KICKSTART_512K)
                            {
                                APTR destinationAddress;
                                ULONG writeWordCounter = 0;
                                UBYTE progressIndicator = 0;

                                destinationAddress = (ULONG)0x00F80000;

                                printf("Writing MapROM ... SRC: %s, DEST: 0x%X\n\n", argv[2], destinationAddress);

                                do {
                                    ((UWORD *)destinationAddress)[writeWordCounter] = ((UWORD *)pBuffer)[writeWordCounter];
                                    writeWordCounter++;

                                    if ((writeWordCounter % 4096) == 0)
                                    {
                                        progressIndicator++;
                                        printProgress(progressIndicator, 64);
                                    }

                                } while (writeWordCounter < (KICKSTART_512K / 2));   

                                printf("Done ... Warm Reboot needed to take effect\n");
                            }
                            else
                            {
                                printf("Failed with Kickstart images size ... Only 512KB images are supported\n", argv[2]);
                            }
                            
                            freeFileHandler(fileSize);                            
                        }
                        else if (readFileNotFound == readFileProgram)
                        {
                            printf("Failed to open kickstart image: %s\n", argv[2]);
                        }
                        else if (readFileNoMemoryAllocated == readFileProgram)
                        {
                            printf("Failed to allocate memory for file: %s\n", argv[2]);
                        }
                        else if (readFileGeneralError == readFileProgram)
                        {
                            printf("Failed to read into memory file: %s\n\n");    
                        }
                        else
                        {
                            printf("Unhandled error in readFileIntoMemoryHandler()\n");    
                        }
                    }
                    else
                    {
                        printf("Unable to determine file size of %s\n", argv[2]);
                    }
                }
                else
                {
                    printf("No Kickstart image specified\n");
                }
            }
            break;
        }
        
        ++argv;
        --argc;
    }
}
