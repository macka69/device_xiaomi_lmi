#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/404/configs/common.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

PRODUCT_NAME := p404_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/google/pixel/config.mk)
$(call inherit-product, vendor/google/gms/config.mk)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210805.001 7474174 release-keys"
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys
# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"
