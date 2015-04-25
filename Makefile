SED?=/usr/bin/sed
SH?=/bin/sh
LOCALBASE?=/usr/local
BINDIR?=${LOCALBASE}/bin
MANDIR?=${LOCALBASE}/man
DATADIR?=${LOCALBASE}/share
DOCDIR?=${DATADIR}/doc
WTFUBARDIR=${DATADIR}/wtfubar
WTFUBARDOCDIR=${DOCDIR}/wtfubar
INSTALL?=/usr/bin/install

install:
	${INSTALL} -d ${DESTDIR}${BINDIR} ${DESTDIR}${MANDIR}/man6
	${INSTALL} -d ${DESTDIR}${WTFUBARDIR} ${DESTDIR}${WTFUBARDOCDIR}
	${INSTALL} acronyms acronyms-o acronyms.comp ${DESTDIR}${WTFUBARDIR}
	${SED} -e "s|/bin/sh|${SH}|1;s|/usr/local|${LOCALBASE}|1" wtfubar > \
		${DESTDIR}${BINDIR}/wtfubar
	${INSTALL} ChangeLog.md README.md ${DESTDIR}${WTFUBARDOCDIR}
	${INSTALL} wtfubar.6 ${DESTDIR}${MANDIR}/man6
