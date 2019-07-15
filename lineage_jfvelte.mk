# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jfvelte device
$(call inherit-product, device/samsung/jfvelte/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_jfvelte
PRODUCT_DEVICE := jfvelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9515

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=jfveltexx \
    TARGET_DEVICE=jfvelte \
    PRIVATE_BUILD_DESC="jfveltexx-user 5.0.1 LRX22C I9515XXS1BQD2 release-keys"

BUILD_FINGERPRINT := "samsung/jfveltexx/jfvelte:5.0.1/LRX22C/I9515XXS1BQD2:user/release-keys"
