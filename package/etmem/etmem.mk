################################################################################
#
# etmem
#
################################################################################
ETMEM_VERSION = 7254cf1
ETMEM_SITE = https://gitee.com/openeuler/etmem.git
ETMEM_SITE_METHOD = git
ETMEM_LICENSE = MulanPSL-2.0
ETMEM_LICENSE_FILE = License/"Project License"
ETMEM_DEPENDENCIES = uthash libboundscheck libglib2 numactl json-c libcap


$(eval $(cmake-package))