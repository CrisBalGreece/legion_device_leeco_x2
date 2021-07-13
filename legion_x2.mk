# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LegionOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/leeco/x2/device.mk)

# Inherit some common LegionOS stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# LegionOS
TARGET_BOOT_ANIMATION_RES := 1080
LEGION_BUILD_TYPE := OFFICIAL
LEGION_MAINTAINER := CrisBalGreece
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# LegionOS Device Maintainers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=CrisBalGreece


# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := LeEco
PRODUCT_DEVICE := x2
PRODUCT_MANUFACTURER := LeEco
PRODUCT_NAME := legion_x2

PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=le_x2 \
    PRODUCT_NAME=LeMax2_WW \
    PRIVATE_BUILD_DESC="le_x2-user 6.0.1 FKXOSOP5801910311S eng.letv.20161031.012138.wechatpay release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys
#BUILD_FINGERPRINT := LeEco/ZL1_NA/le_zl1:6.0.1/WEXNAOP5802101261S/letv01261206:user/release-keys
