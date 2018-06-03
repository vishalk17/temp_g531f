#
# Copyright 2018 vishalk17 <github.com/vishalk17>
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
#

DEVICE_PATH := device/samsung/grandprimevelte

# Target & Board
TARGET_BOARD_PLATFORM := mrvl
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := grandprimevelte,grandprimeveltexx

# CPU
TARGET_BOOTLOADER_BOARD_NAME := pxa1908
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true


# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
        --kernel_offset 0x00008000 \
	--ramdisk_offset 0x01000000 \
	--second_offset 0x00f00000 \
	--tags_offset 0x00000100 \
	--dt $(DEVICE_PATH)/dt.img

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/grandprimevelte
TARGET_KERNEL_CONFIG := grandprimevelte_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_USES_FULL_RECOVERY_IMAGE := true

#copy prebuilt kernel to its place
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

ifeq ($(TARGET_BOARD_PLATFORM),mrvl)
PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel
endif

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16384200
BOARD_FLASH_BLOCK_SIZE := 131072

# LZMA compression for ramdisk
LZMA_RAMDISK_TARGETS += recovery

# Recovery
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := 
TARGET_DISABLE_TRIPLE_BUFFERING := false

# TWRP
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/twrp.fstab
TW_THEME := portrait_hdpi
#TW_BRIGHTNESS_PATH := 
#TARGET_RECOVERY_LCD_BACKLIGHT_PATH :=
#TW_CUSTOM_CPU_TEMP_PATH := 
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 165
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_EXTRA_LANGUAGES := true
TW_EXCLUDE_SUPERSU := true
#TW_CUSTOM_BATTERY_PATH :=
TW_EXCLUDE_MTP := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
TW_EXCLUDE_DEFAULT_USB_INIT := true
