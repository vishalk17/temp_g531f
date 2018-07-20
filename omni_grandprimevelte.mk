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

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=grandprimevelte \
    PRODUCT_NAME=omni_grandprimevelte \
	PRIVATE_BUILD_DESC="grandprimeveltexx-user 5.1.1 LMY48B G531FDDU1AOJ1 release-keys"

BUILD_FINGERPRINT := samsung/grandprimeveltexx/grandprimevelte:5.1.1/LMY48B/G531FDDU1AOJ1:user/release-keys
