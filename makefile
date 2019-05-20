LFLAGS=	-lcurses
CFLAGS= -O -s

all: aliens

aliens:	aliens.c
	$(CC) $(CFLAGS) aliens.c -o aliens $(LFLAGS)

clean:
	-rm aliens

distclean: clean
