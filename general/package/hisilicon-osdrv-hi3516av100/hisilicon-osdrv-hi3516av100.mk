################################################################################
#
# hisilicon-osdrv-hi3516av100
#
################################################################################

HISILICON_OSDRV_HI3516AV100_VERSION =
HISILICON_OSDRV_HI3516AV100_SITE =
HISILICON_OSDRV_HI3516AV100_LICENSE = MIT
HISILICON_OSDRV_HI3516AV100_LICENSE_FILES = LICENSE


define HISILICON_OSDRV_HI3516AV100_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/script/S99hisilicon

	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/sensors
	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc/sensors $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/sensor/config/*.ini

	#$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/sensors/WDR
	#$(INSTALL) -m 644 -t $(TARGET_DIR)/etc/sensors/WDR $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/sensor/config/WDR/*.ini

	$(INSTALL) -m 755 -d $(TARGET_DIR)/lib/modules/4.9.37/hisilicon
	$(INSTALL) -m 644 -t $(TARGET_DIR)/lib/modules/4.9.37/hisilicon $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/kmod/*.ko

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/script/load_hisilicon
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/script/ircut_demo
	#$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/script/set_allocator

	#$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/fonts
	#$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/fonts $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/fonts/*.bin

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib/sensors
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/sensors $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/sensor/*.so

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/lib
	$(INSTALL) -m 644 -t $(TARGET_DIR)/usr/lib/ $(BR2_EXTERNAL_HISILICON_PATH)/package/hisilicon-osdrv-hi3516av100/files/lib/*.so
endef

$(eval $(generic-package))