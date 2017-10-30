# $OpenBSD: Makefile,v 1.87 2017/09/27 16:56:50 unknown Exp $

COMMENT=	A general purpose, fast and lightweight editor

V=		0.5.2
DISTNAME=	howl-$V
PKGNAME=	howleditor-$V
CATEGORIES=	editors
HOMEPAGE=	https://www.howl.io/
MASTER_SITES=	https://github.com/howl-editor/howl/releases/download/$V/
EXTRACT_SUFX=	.tgz

#MAINTAINER=

# MIT License and SIL Open Font License 1.1 (http://fontawesome.io/license)
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes
WRKSRC=		${WRKDIST}/src
NO_TEST=	Yes
BUILD_DEPENDS=	devel/gmake
LIB_DEPENDS=	x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS +=	CCOPT="${CFLAGS}"

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0 pangocairo-1.0 pthread c++abi

.include <bsd.port.mk>
