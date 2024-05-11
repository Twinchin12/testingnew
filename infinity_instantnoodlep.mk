#
# Copyright (C) 2018 The LineageOS Project
#               2022 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Gapps
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := false

# Rice Target
TARGET_ENABLE_BLUR := true

# Infinity-X Specific Flags
INFINITY_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_MAINTAINER := zizzyboi
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_HAS_UDFPS := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_PHONE_LINK_SUPPORTED ?= true

EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := infinity_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2025

PRODUCT_SYSTEM_NAME := OnePlus8Pro
PRODUCT_SYSTEM_DEVICE := OnePlus8Pro

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus8Pro-user 13 RKQ1.211119.001 Q.129a9e4-1-2 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus8Pro/OnePlus8Pro:13/RKQ1.211119.001/Q.129a9e4-1-2:user/release-keys
