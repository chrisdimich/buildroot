################################################################################
#
# kernel-module-imx-gpu-viv
#
################################################################################

KERNEL_MODULE_IMX_GPU_VIV_VERSION = 4d035200e7b15d2713d49979a1d05f201b92cf4c
KERNEL_MODULE_IMX_GPU_VIV_SITE = \
	$(call github,Freescale,kernel-module-imx-gpu-viv,$(KERNEL_MODULE_IMX_GPU_VIV_VERSION))
KERNEL_MODULE_IMX_GPU_VIV_LICENSE = GPL-2.0
KERNEL_MODULE_IMX_GPU_VIV_LICENSE_FILES = COPYING

KERNEL_MODULE_IMX_GPU_VIV_MODULE_MAKE_OPTS = \
	AQROOT=$(@D)/kernel-module-imx-gpu-viv-src \
	KERNEL_DIR=$(LINUX_DIR)

KERNEL_MODULE_IMX_GPU_VIV_MODULE_SUBDIRS = kernel-module-imx-gpu-viv-src

define KERNEL_MODULE_IMX_GPU_VIV_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_DISABLE_OPT,CONFIG_MXC_GPU_VIV)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
