$(call inherit-product, device/samsung/grandprimevelte/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk) # If you are building for a phone

# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Release name
PRODUCT_RELEASE_NAME := grandprimevelte
PRODUCT_DEVICE := grandprimevelte
PRODUCT_NAME := omni_grandprimevelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := g531f
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
