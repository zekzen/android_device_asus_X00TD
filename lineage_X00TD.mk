#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Matrixx flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
MATRIXX_MAINTAINER := dotkit
MATRIXX_CHIPSET := SDM660
MATRIXX_BATTERY := 5000mAh
MATRIXX_DISPLAY := 1080x2160

# GApps flags
#BUILD_GOOGLE_CONTACTS := true
#BUILD_GOOGLE_DIALER := true
#BUILD_GOOGLE_MESSAGE := true
#TARGET_GAPPS_ARCH := arm64
#WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00TD \
    PRODUCT_NAME=WW_X00TD \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 72 release-keys"

# Build fingerprint
BUILD_FINGERPRINT := "asus/WW_X00TD/ASUS_X00TD_2:9/QKQ1/17.2017.2012.438-20201203:user/release-keys"
