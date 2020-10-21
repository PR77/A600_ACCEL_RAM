#include <clib/dos_protos.h>
#include <clib/exec_protos.h>

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

/*****************************************************************************/
/* Types *********************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Globals *******************************************************************/
/*****************************************************************************/

static BPTR fileHandle;
static APTR memoryHandle;

/*****************************************************************************/
/* Prototypes ****************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Code **********************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Function:    readFileIntoMemoryHandler()                                  */
/* Returns:     tReadFileHandler                                             */
/* Parameters:  char *fileName, ULONG bufferSize, APTR * pMemoryBase         */
/* Description: Open selected file if exists and reads into allocated memory */
/*****************************************************************************/
tReadFileHandler readFileIntoMemoryHandler(char *fileName, ULONG bufferSize, APTR * pMemoryBase)
{
    tReadFileHandler readFileHandler = readFileIdle;    
    
#ifndef NDEBUG
    printf("ENTRY: readFileIntoMemoryHandler(char *fileName %s, ULONG bufferSize %d, APTR * pMemoryBase 0x%X)\n", fileName, bufferSize, pMemoryBase);
#endif    

    if (0L != fileName)
    {
        fileHandle = Open(fileName, MODE_OLDFILE);
#ifndef NDEBUG
        printf("FLOW: readFileIntoMemoryHandler: Opening fileHandle 0x%X\n", fileHandle);
#endif 
        if (0L != fileHandle)
        {
            memoryHandle = AllocMem(bufferSize, 0);

            if (memoryHandle)
            {
                if (bufferSize == (ULONG)Read(fileHandle, memoryHandle, bufferSize))
                {
                    *pMemoryBase = memoryHandle;
    
                    readFileHandler = readFileOK;
                }
                else
                {
                    FreeMem(memoryHandle, bufferSize);
                    Close(fileHandle);
                    
                    readFileHandler = readFileGeneralError;
                }
            }
            else
            {
                Close(fileHandle);
                
                readFileHandler = readFileNoMemoryAllocated;
            }
        }
        else
        {
            readFileHandler = readFileNotFound;
        }
    }
    else
    {
        readFileHandler = readFileNoFileSpecified;
    }

#ifndef NDEBUG
    printf("EXIT: readFileIntoMemoryHandler(readFileHandler 0x%X)\n", readFileHandler);
#endif    
    return (readFileHandler);    
}

/*****************************************************************************/
/* Function:    freeFileHandler()                                            */
/* Returns:     tReadFileHandler                                             */
/* Parameters:  ULONG bufferSize                                             */
/* Description: Closes open file handle and deallocates storage memory       */
/*****************************************************************************/
tReadFileHandler freeFileHandler(ULONG bufferSize)
{
    tReadFileHandler readFileHandler = readFileIdle;
    
#ifndef NDEBUG
    printf("ENTRY: freeFileHandler(void)\n");
#endif    
    
    if (0L != fileHandle)
    {
#ifndef NDEBUG
        printf("FLOW: freeFileHandler: File Open(fileHandle 0x%X)\n", fileHandle);
#endif
        Close(fileHandle);
#ifndef NDEBUG
        printf("FLOW: freeFileHandler: File Closed(fileHandle 0x%X)\n", fileHandle);
#endif
    }
   
    if (0L != memoryHandle)
    {
#ifndef NDEBUG
        printf("FLOW: freeFileHandler: Memory Allocated(memoryHandle 0x%X)\n", memoryHandle);
#endif
        FreeMem(memoryHandle, bufferSize);
#ifndef NDEBUG
        printf("FLOW: freeFileHandler: Memory Deallocated(memoryHandle 0x%X)\n", memoryHandle);
#endif
    }

    readFileHandler = readFileOK;
#ifndef NDEBUG
    printf("EXIT: freeFileHandler(readFileHandler 0x%X)\n", readFileHandler);
#endif    
    return (readFileHandler);
}

/*****************************************************************************/
/* Function:    getFileSize()                                                */
/* Returns:     tReadFileHandler                                             */
/* Parameters:  char *fileName, ULONG * pFileSize                            */
/* Description: Gets the size, in bytes, of the filename passed              */
/*****************************************************************************/
tReadFileHandler getFileSize(char *fileName, ULONG * pFileSize)
{
    struct FileInfoBlock FIB;
    tReadFileHandler readFileHandler = readFileIdle;

#ifndef NDEBUG
    printf("ENTRY: getFileSize(char *fileName %s, ULONG * pFileSize 0x%X)\n", fileName, pFileSize);
#endif

    if (0L != fileName)
    {
         fileHandle = Lock(fileName, MODE_OLDFILE);
#ifndef NDEBUG
        printf("FLOW: getFileSize: Locking fileHandle 0x%X\n", fileHandle);
#endif 

        if (0L != fileHandle)
        {
            Examine(fileHandle, &FIB);

            UnLock(fileHandle);

#ifndef NDEBUG
            printf("FLOW: getFileSize: Unlocking fileHandle 0x%X\n", fileHandle);
#endif
            readFileHandler = readFileOK;
        }
        else
        {
            readFileHandler = readFileNotFound;
        }
    }
    else
    {
        readFileHandler = readFileNoFileSpecified;
    }
    
    if (readFileOK == readFileHandler)
        *pFileSize = (ULONG)FIB.fib_Size;
    else
        *pFileSize = 0;
        
#ifndef NDEBUG
    printf("EXIT: getFileSize(readFileHandler 0x%X)\n", readFileHandler);
#endif    
    return (readFileHandler);
}

/*****************************************************************************/
/* Function:    hexDump()                                                    */
/* Returns:     Prints directly to console                                   */
/* Parameters:  char *desc, void *addr, int len                              */
/* Description: Dumps directly to console human readable memory              */
/*****************************************************************************/
void hexDump (char *desc, void *addr, int len)
{
    
    // https://stackoverflow.com/questions/7775991/how-to-get-hexdump-of-a-structure-data
    
    int i;
    unsigned char buff[17];
    unsigned char *pc = (unsigned char*)addr;

    // Output description if given.
    if (desc != NULL)
        printf ("%s [0x%X]:\n", desc, addr);

    if (len == 0) {
        printf("  ZERO LENGTH\n");
        return;
    }
    if (len < 0) {
        printf("  NEGATIVE LENGTH: %i\n",len);
        return;
    }

    // Process every byte in the data.
    for (i = 0; i < len; i++) {
        // Multiple of 16 means new line (with line offset).

        if ((i % 16) == 0) {
            // Just don't print ASCII for the zeroth line.
            if (i != 0)
                printf ("  %s\n", buff);

            // Output the offset.
            printf ("  %04x ", i);
        }

        // Now the hex code for the specific character.
        printf (" %02x", pc[i]);

        // And store a printable ASCII character for later.
        if ((pc[i] < 0x20) || (pc[i] > 0x7e))
            buff[i % 16] = '.';
        else
            buff[i % 16] = pc[i];
        buff[(i % 16) + 1] = '\0';
    }

    // Pad out last line if not exactly 16 characters.
    while ((i % 16) != 0) {
        printf ("   ");
        i++;
    }

    // And print the final ASCII bit.
    printf ("  %s\n", buff);
}


/*****************************************************************************/
/* Function:    printProgress()                                              */
/* Returns:     Prints directly to console                                   */
/* Parameters:  UBYTE count, UBYTE max                                       */
/* Description: Prints a nice progress bar to the console screen             */
/*****************************************************************************/
void printProgress(UBYTE count, UBYTE max)
{
    
    //https://gist.github.com/amullins83/24b5ef48657c08c4005a8fab837b7499

	const char prefix[] = "Progress: [";
	const char suffix[] = "]";
	const UBYTE prefix_length = sizeof(prefix) - 1;
	const UBYTE suffix_length = sizeof(suffix) - 1;

	char *buffer = calloc(max + prefix_length + suffix_length + 1, 1); // +1 for \0

	size_t i = 0;
	strcpy(buffer, prefix);

	for (; i < max; ++i)
	{
		buffer[prefix_length + i] = i < count ? '#' : ' ';
	}

	strcpy(&buffer[prefix_length + i], suffix);
	printf("\b%c[2K\r%s\n", 27, buffer);

	free(buffer);
}