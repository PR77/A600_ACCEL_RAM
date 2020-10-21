CC=vc +kick13
CFLAGS=-I$(NDK_INC) -DNDEBUG

all: mapROM

mapROM: mapROM.c Helpers.c

	$(CC) $(CFLAGS) $^ -lamiga -o mapROM

