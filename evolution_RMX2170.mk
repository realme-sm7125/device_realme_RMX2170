#
# Copyright (C) 2020 The DotOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2170 device
$(call inherit-product, device/realme/RMX2170/device.mk)

# Inherit some common EvolutionX stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier
PRODUCT_NAME := evolution_RMX2170
PRODUCT_DEVICE := RMX2170
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 7 Pro
PRODUCT_MANUFACTURER := Realme

PRODUCT_SYSTEM_NAME := RMX2170
PRODUCT_SYSTEM_DEVICE := RMX2170

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="atoll-user 11 RKQ1.200903.002/ eng.root.04080114.013112 release-keys"

BUILD_FINGERPRINT := "qti/atoll/atoll:11/RKQ1.200903.002/root04080114:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT="RMX2170" \
    TARGET_DEVICE="RMX2170"

# Inherit EvolutionX build stuff.
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES_EVO := true
TARGET_PIXEL_CHARGE_ANIM := true
TARGET_SUPPORTS_QUICK_TAP := false
EXTRA_UDFPS_ANIMATIONS := true
EVO_BUILD_TYPE := OFFICIAL

# Memetainer stuff
EVO_DONATE_URL := https://paypal.me/marshmello61
EVO_MAINTAINER := Mayur Varde
EVO_SUPPORT_URL := https://t.me/mellolab
