#
# Copyright 2018 The Android Open Source Project
# Copyright 2014-2022 The Team Win LLC
#
# SPDX-License-Identifier: Apache-2.0
#

# The below variables will be generated automatically
#
# Release name
PRODUCT_RELEASE_NAME := surya

# Device path for OEM device tree
DEVICE_PATH := device/xiaomi/surya

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from this product for devices that support only 64-bit apps using:
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Enable Project Quotas and Case Folding
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit any OrangeFox-specific settings
$(call inherit-product-if-exists, $(DEVICE_PATH)/fox_surya.mk)

# Inherit device configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := surya
PRODUCT_NAME := twrp_surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := xiaomi
