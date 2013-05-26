## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Lenovo A820

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/a820/device_a820.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a820
PRODUCT_NAME := cm_a820
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo A820
PRODUCT_MANUFACTURER := Lenovo
