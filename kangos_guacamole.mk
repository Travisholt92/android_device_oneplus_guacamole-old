#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

# Inherit GApps if exsits
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus 7 Pro
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Official
KANGOS_BUILDTYPE := OFFICIAL

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1080
# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:10/QKQ1.190716.003/2010191009:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus7Pro \
    PRODUCT_NAME=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 10 QKQ1.190716.003 2010191009 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Gapps
TARGET_GAPPS_ARCH := arm64

USE_GAPPS=true
TARGET_INCLUDE_AOSP_REPLACEMENT := true

#Device Info.
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=Modit_ji \
  ro.kangos.cpu=SDM855
