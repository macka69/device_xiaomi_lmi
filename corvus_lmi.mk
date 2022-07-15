#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Corvus stuff.
$(call inherit-product, vendor/corvus/config/common_full_phone.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Gapps
USE_GAPPS := true

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := corvus_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro
FOD_RESOURCES := true
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
