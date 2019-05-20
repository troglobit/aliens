CFLAGS = -W -Wall -Wextra -O2
LFLAGS = -lcurses

all: aliens

aliens:	aliens.c
	$(CC) $(CFLAGS) aliens.c -o aliens $(LFLAGS)

install:
	install -b -D -s aliens $(DESTDIR)/usr/games/aliens
	install -b -D aliens.6 $(DESTDIR)/usr/man/man6/aliens.6
	install -b -D README.md $(DESTDIR)/usr/share/doc/aliens/README.md

clean:
	-rm -f aliens *.o

distclean: clean
	-rm -f errs core a.out
