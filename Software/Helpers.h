#ifndef __HELPERS__
#define __HELPERS__

/*****************************************************************************/
/* Macros ********************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Defines *******************************************************************/
/*****************************************************************************/

/*****************************************************************************/
/* Types *********************************************************************/
/*****************************************************************************/

typedef enum {
    
    readFileIdle = 0,
    readFileNoFileSpecified,
    readFileNotFound,
    readFileNoMemoryAllocated,
    readFileGeneralError,
    readFileOK
    
} tReadFileHandler;

/*****************************************************************************/
/* Prototypes ****************************************************************/
/*****************************************************************************/

tReadFileHandler readFileIntoMemoryHandler(char *fileName, ULONG bufferSize, APTR * pMemoryBase);
extern tReadFileHandler freeFileHandler(ULONG bufferSize);
extern tReadFileHandler getFileSize(char *fileName, ULONG * pFileSize);
extern void hexDump(char *desc, void *addr, int len);
extern void printProgress(UBYTE count, UBYTE max);


#endif /* __HELPERS__ */