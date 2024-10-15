#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from sdm845 device
$(call inherit-product, device/ayn/sdm845/device.mk)

PRODUCT_DEVICE := sdm845
PRODUCT_NAME := omni_sdm845
PRODUCT_BRAND := qti
PRODUCT_MODEL := SDM845 for arm64
PRODUCT_MANUFACTURER := ayn

PRODUCT_GMS_CLIENTID_BASE := android-ayn

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm845-user 10 QKQ1.200517.002 Odin_M208041615 releasekey-keys"

BUILD_FINGERPRINT := qti/sdm845/sdm845:10/QKQ1.200517.002/Odin_M208041615:user/releasekey-keys
