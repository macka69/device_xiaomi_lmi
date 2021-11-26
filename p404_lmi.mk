#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common p404 stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit GAPPS
$(call inherit-product, vendor/google/gms/products/gms.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := p404_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.5.2.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.5.2.0.RJKMIXM:user/release-keys
