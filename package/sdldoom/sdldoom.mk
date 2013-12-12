################################################################################
#
# sdldoom
#
################################################################################

SDLDOOM_VERSION = 1.10
SDLDOOM_SOURCE = sdldoom-$(SDLDOOM_VERSION).tar.gz
SDLDOOM_URL = http://www.libsdl.org/projects/doom
SDLDOOM_SITE = $(SDLDOOM_URL)/src
SDLDOOM_INSTALL_STAGING = YES
SDLDOOM_DEPENDENCIES = sdl
SDLDOOM_WADFILE = data/doom1.wad.gz

SDLDOOM_CONF_OPT = \
	--with-sdl-prefix=$(STAGING_DIR)/usr \
	--with-sdl-exec-prefix=$(STAGING_DIR)/usr \
	--disable-sdltest \
	--enable-static

$(eval $(autotools-package))
