#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from common.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_griffin
PRODUCT_DEVICE := griffin
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia 1
PRODUCT_BRAND := Sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=griffin \
    TARGET_PRODUCT=J9110 \
    PRIVATE_BUILD_DESC="Sony J9110 11 55.2.A.4.332 user release-keys"

BUILD_FINGERPRINT := Sony/J9110/J9110:11/55.2.A.4.332/055002A004033203408384484:user/release-keys
