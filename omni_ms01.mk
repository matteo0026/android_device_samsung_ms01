# Release name
PRODUCT_RELEASE_NAME := ms01

$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_DEVICE := ms01
PRODUCT_NAME := omni_ms01
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
