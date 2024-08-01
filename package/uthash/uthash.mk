################################################################################
#
# HOSTuthash
#
################################################################################
UTHASH_VERSION = 619fe95
UTHASH_SITE = https://github.com/troydhanson/uthash.git
UTHASH_SITE_METHOD = git
UTHASH_LICENSE_FILE = LICENSE
UTHASH_INSTALL_STAGING = YES

define UTHASH_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0644 -t $(STAGING_DIR)/usr/include/ $(@D)/src/*.h
endef

define UTHASH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 -t $(TARGET_DIR)/usr/include/ $(@D)/src/*.h
endef

$(eval $(generic-package))
