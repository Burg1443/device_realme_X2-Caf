#
# Copyright (C) 2022 The XPerience Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from X2 device
$(call inherit-product, device/realme/X2/device.mk)

# Inherit some common XPerience stuff
$(call inherit-product, vendor/xperience/config/common.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := X2
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := xperience_X2
PRODUCT_MODEL := realme X2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1993L1-user 11 RKQ1.201112.002 1639416071279 release-keys"

BUILD_FINGERPRINT := realme/RMX1993/RMX1993L1:11/RKQ1.201112.002/1639416071279:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Rom Specific Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP  := true

#gapps
WITH_GMS := true
