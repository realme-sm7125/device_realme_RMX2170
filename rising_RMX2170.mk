#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit some common risingOS stuff
$(call inherit-product, vendor/rising/config/rising.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := rising_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 7 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_SYSTEM_NAME := RMX2170
PRODUCT_SYSTEM_DEVICE := RMX2170

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="atoll-user 11 RKQ1.200903.002/ eng.root.04080114.013112 release-keys"

BUILD_FINGERPRINT := "asus/WW_Phone/ASUS_X00HD_4:7.1.1/NMF26F/14.2016.1801.372-20180119:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="RMX2170" \
    TARGET_DEVICE="RMX2170"

# Inherit risingOS build stuff.
WITH_GMS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_PIXEL_CHARGE_ANIM := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_USE_GOOGLE_TELEPHONY := true

# Inherit risingOS prop stuff
RISING_MAINTAINER := marshmello61
RISING_CHIPSET := Snapdragon
RISING_STORAGE := 128gb
RISING_RAM := 8gb
RISING_BATTERY := 4500mah
RISING_DISPLAY := 2400×1080
