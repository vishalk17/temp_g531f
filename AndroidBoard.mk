LOCAL_PATH := $(call my-dir)

ifneq ($(filter grandprimevelte,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

# include the non-open-source counterpart to this file
-include vendor/samsung/grandprimevelte/AndroidBoardVendor.mk
