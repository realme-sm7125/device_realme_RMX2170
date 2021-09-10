#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit some common Pixel Plus UI stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := aosp_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 7 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="atoll-user 11 RKQ1.200903.002/ eng.root.04080114.013112 release-keys"

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2170" \
    TARGET_DEVICE="RMX2170"

# Inherit Pixel Plus UI build stuff.
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_FACE_UNLOCK_SUPPORTED := true
PPUI_MAINTAINER := Mayur-Varde
TARGET_PIXEL_CHARGE_ANIM := true
CUSTOM_BUILD_TYPE := OFFICIAL
EXTRA_FOD_ANIMATIONS := true

# Inherit Pixel Plus UI Props.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ppui.version=3.7 \
    ro.ppui.version_code=Ragnarok \
    ro.ppui.is_official=true \
    ro.ppui.maintainer_name=Mayur-Varde
