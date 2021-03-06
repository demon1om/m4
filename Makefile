#	$NetBSD: Makefile,v 1.12 2003/05/18 07:57:35 lukem Exp $
#
#	@(#)Makefile	8.1 (Berkeley) 6/6/93

# -DEXTENDED 
# 	if you want the paste & spaste macros.

PROG=		m4
CPPFLAGS+=	-DEXTENDED -Dunix
SRCS=		eval.c expr.c gnum4.c look.c main.c misc.c trace.c
INSTALL=	install -c
PREFIX=		/usr
DESTDIR=""
MANDIR=		$(PREFIX)/share/man

all:
	$(CC) $(CPPFLAGS) $(SRCS) -o $(PROG)

clean:
	rm -f *.o $(PROG)

install:
	$(INSTALL) $(PROG) $(DESTDIR)/$(PREFIX)/bin
	$(INSTALL) -m 0644 $(PROG).1 $(DESTDIR)/$(MANDIR)/man1/

