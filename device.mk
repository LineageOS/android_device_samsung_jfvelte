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

# Inherit from jf-common
$(call inherit-product, device/samsung/jf-common/jf-common.mk)

# Also get non-open-source specific aspects
$(call inherit-product, vendor/samsung/jfvelte/jfvelte-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/jfvelte/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.target.rc

# Bluetooth script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/bin/init.qcom.bt.sh:$(TARGET_COPY_OUT_VENDOR)/bin/init.qcom.bt.sh

# Prima opensource driver files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prima/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/prima/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/prima/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# WCNSS service daemon
PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk

# System properties
$(call inherit-product, device/samsung/jfvelte/system_prop.mk)
