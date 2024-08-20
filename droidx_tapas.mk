#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tapas device
$(call inherit-product, device/xiaomi/tapas/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

# Inherit droidx ui variables
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_USES_LAWNCHAIR := true
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := false

PRODUCT_NAME := droidx_tapas
PRODUCT_DEVICE := tapas
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tapas_global-user 13 TKQ1.221114.001 V816.0.2.0.UMTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/tapas_global/tapas:13/TKQ1.221114.001/V816.0.2.0.UMTMIXM:user/release-keys
