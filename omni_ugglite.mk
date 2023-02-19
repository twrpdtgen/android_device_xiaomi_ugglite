#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ugglite device
$(call inherit-product, device/xiaomi/ugglite/device.mk)

PRODUCT_DEVICE := ugglite
PRODUCT_NAME := omni_ugglite
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ugglite-user 7.1.2 N2G47H V11.0.3.0.NDFMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/ugglite/ugglite:7.1.2/N2G47H/V11.0.3.0.NDFMIXM:user/release-keys
