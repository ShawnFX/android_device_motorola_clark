# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

$(call inherit-product, device/motorola/clark/full_clark.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/clark/overlay

PRODUCT_RELEASE_NAME := MOTO X STYLE
PRODUCT_NAME := cm_clark
PRODUCT_MODEL := XT1575

#Build.prop overides based on LPH.116-18
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/clark_retus/clark:5.1.1/LPH23.116-18/18:user/release-keys \
    PRIVATE_BUILD_DESC="clark_retus-user 5.1.1 LPH23.116-18 18 release-keys"