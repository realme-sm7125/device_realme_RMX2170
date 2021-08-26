#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7125-common
$(call inherit-product, device/realme/sm7125-common/common.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/realme/RMX2170/RMX2170-vendor.mk)

YOUR_HW_PLATFORM :=sm8150

PRODUCT_BOARD_PLATFORM := $(YOUR_HW_PLATFORM)
PRODUCT_USES_QCOM_HARDWARE := true
QCOM_BOARD_PLATFORMS := sm8150

SRC_AUDIO_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/audio
SRC_DISPLAY_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/display
SRC_MEDIA_HAL_DIR := hardware/qcom-caf/$(YOUR_HW_PLATFORM)/media

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/qcom-caf/$(YOUR_HW_PLATFORM)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/odm/,$(TARGET_COPY_OUT_ODM)/etc) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/vendor/,$(TARGET_COPY_OUT_VENDOR)/etc)
