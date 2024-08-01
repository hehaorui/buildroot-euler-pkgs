################################################################################
#
# libboundscheck
#
################################################################################
LIBBOUNDSCHECK_VERSION = v1.1.16 
LIBBOUNDSCHECK_SITE = https://gitee.com/openeuler/libboundscheck.git
LIBBOUNDSCHECK_SITE_METHOD = git
LIBBOUNDSCHECK_LISCENSE = MulanPSL-2.0
LIBBOUNDSCHECK_LICENSE_FILE = LICENSE
LIBBOUNDSCHECK_INSTALL_STAGING = YES

define LIBBOUNDSCHECK_BUILD_CMDS
	$(MAKE) CC=gcc -C $(@D)
endef

define LIBBOUNDSCHECK_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/libboundscheck.so $(STAGING_DIR)/usr/lib/libboundscheck.so
	$(INSTALL) -D -m 0644 $(@D)/include/securec.h $(STAGING_DIR)/usr/include/securec.h
	$(INSTALL) -D -m 0644 $(@D)/include/securectype.h $(STAGING_DIR)/usr/include/securectype.h
endef

define LIBBOUNDSCHECK_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/libboundscheck.so $(TARGET_DIR)/usr/lib/libboundscheck.so
	# $(INSTALL) -D -m 0755 $(@D)/include/securec.h $(TARGET_DIR)/usr/include/securec.h
	# $(INSTALL) -D -m 0755 $(@D)/include/securectype.h $(TARGET_DIR)/usr/include/securectype.h
	
endef

$(eval $(generic-package))
# $(eval $(host-generic-package))
