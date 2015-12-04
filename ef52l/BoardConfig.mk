# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

-include device/pantech/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/pantech/ef52l/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := ../Pantech/kernel_msm8960
TARGET_KERNEL_CONFIG := cm_ef52_defconfig
#TARGET_PREBUILT_KERNEL := device/pantech/ef52l/recovery/kernel

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/pantech/ef52l/init/init_ef52l.cpp

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 #20MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1782579200 #1.7GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27577531392 #25.7GB
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_OTA_ASSERT_DEVICE := ef52l,ef52s,ef52k

#Vibrator
#BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/pantech/ef52l/vibrator/vibrator.c

# RIL
#BOARD_RIL_CLASS := ../../../device/pantech/ef52l/ril/
#TARGET_RIL_VARIANT := caf
#COMMON_GLOBAL_CFLAGS += -DUSE_RIL_VERSION_10

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
DONT_DEXPREOPT_PREBUILTS := true

# Init
#TARGET_NO_INITLOGO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/ef52l/bluetooth
#BOARD_BLUEDROID_VENDOR_CONF := device/pantech/ef52l/bluetooth/libbt_vndcfg.txt


#BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Camera
COMMON_GLOBAL_CFLAGS += -DPANTECH_CAMERA_HARDWARE

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#Sensor
EF52_USE_KITKAT_SENSORS := yes

#TWRP config
#TARGET_RECOVERY_FSTAB := device/pantech/ef52l/ramdisk/fstab.qcom
#RECOVERY_VARIANT := twrp
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/pantech/ef52l/recovery/kernel
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"

TARGET_RECOVERY_QCOM_RTC_FIX 			:= true
BOARD_SUPPRESS_SECURE_ERASE 			:= true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=7
