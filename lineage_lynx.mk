#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Gapps
$(call inherit-product, vendor/gms/gms_full.mk

#Crdroid_Stuff
                                                                             
TARGET_IS_PIXEL_7 := true                                                              
EXTRA_UDFPS_ANIMATIONS := true                                                         
TARGET_BOOT_ANIMATION_RES := 1080                                                      
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit device configuration
$(call inherit-product, device/google/lynx/aosp_lynx.mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, device/google/lynx/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := lineage_lynx

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=lynx \
    PRIVATE_BUILD_DESC="lynx-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/lynx/lynx:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/lynx/lynx-vendor.mk)
