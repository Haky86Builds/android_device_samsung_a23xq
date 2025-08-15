#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# 64 Bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# ANT+
PRODUCT_PACKAGES += \
    AntHalService-Soong

# API
BOARD_SHIPPING_API_LEVEL := 31
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl.samsung-sm6375 \
    android.hardware.audio.effect@6.0-impl \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.2-impl \
    audio.r_submix.default \
    audio.usb.default \
    liba2dpoffload \
    libaudiopreprocessing \
    libbatterylistener \
    libbundlewrapper \
    libcirrusspkrprot \
    libcomprcapture \
    libdownmix \
    libdynproc \
    libeffectproxy \
    libexthwplugin \
    libhdmiedid \
    libhfp \
    libldnhncr \
    libreverbwrapper \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libsndmonitor \
    libspkrprot \
    libtinycompress \
    libvisualizer \
    libvolumelistener

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/audio/configs/,$(TARGET_COPY_OUT_VENDOR)/etc/) \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml

TARGET_EXCLUDES_AUDIOFX := true

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0 \
    android.hardware.bluetooth@1.0.vendor \
    audio.bluetooth.default \
    libbluetooth_audio_session \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml

# Camera
$(call soong_config_set,samsungCameraVars,extra_ids,54)
$(call soong_config_set,samsungCameraVars,needs_sec_reserved_field,true)

PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.samsung

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service-lazy

# Component Overrides
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Dataservices
$(call inherit-product, vendor/qcom/opensource/dataservices/dataservices_vendor_product.mk)

# DebugFS
PRODUCT_SET_DEBUGFS_RESTRICTIONS := true

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey

# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_PACKAGES += \
    android.hardware.graphics.common-V1-ndk_platform.vendor \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    libdisplayconfig.qti \
    libdisplayconfig.system.qti \
    libmemutils \
    libqdMetaData \
    libqdMetaData.system \
    libsdmcore \
    libsdmutils \
    libtinyxml \
    vendor.display.config@1.0 \
    vendor.display.config@1.15.vendor \
    vendor.display.config@2.0 \
    vendor.display.config@2.0.vendor \
    vendor.qti.hardware.capabilityconfigstore@1.0.vendor \
    vendor.qti.hardware.display.allocator-service \
    vendor.qti.hardware.display.composer-service \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.mapper@3.0.vendor \
    vendor.qti.hardware.display.mapper@4.0.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    hardware/qcom-caf/sm8350/display/config/snapdragon_color_libs_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/snapdragon_color_libs_config.xml

# Fastboot
TARGET_BOARD_FASTBOOT_INFO_FILE := $(DEVICE_PATH)/fastboot-info.txt

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Fastcharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung 

# File System
PRODUCT_PACKAGES += \
    fs_config_files

# HotwordEnrollement
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Keymaster
$(call soong_config_set,samsungVars,target_keymaster4_library,//vendor/samsung/a23xq:libskeymaster4device)

# Libinit
$(call soong_config_set,libinit,vendor_init_lib,//$(DEVICE_PATH):libinit_a23xq)

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(DEVICE_PATH)/configs/media/dax3_media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dax3_media_codecs_dolby_audio.xml \
    $(DEVICE_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_blair.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_blair.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_c2_sec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_c2_sec_ape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_ape.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_c2_sec_qcp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_sec_qcp.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_holi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_holi.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance_blair.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_blair.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_performance_holi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_holi.xml \
    $(DEVICE_PATH)/configs/media/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(DEVICE_PATH)/configs/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_blair.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_blair.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_holi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_holi.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/configs/media/media_profiles_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
$(call inherit-product, hardware/qcom-caf/common/common.mk)

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    vendor_dsp_mountpoint \
    vendor_firmware_mnt_mountpoint \
    vendor_firmware-modem_mountpoint

# Power
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/power/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Public Libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# QMI
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/qmi/btcon.json:$(TARGET_COPY_OUT_VENDOR)/etc/btcon.json \
    $(DEVICE_PATH)/configs/qmi/mercury.json:$(TARGET_COPY_OUT_VENDOR)/etc/mercury.json \
    $(DEVICE_PATH)/configs/qmi/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(DEVICE_PATH)/configs/qmi/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config \
    $(DEVICE_PATH)/configs/qmi/sec_config_oem:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config_oem \
    $(DEVICE_PATH)/configs/qmi/TSP1_SPEC_15.txt:$(TARGET_COPY_OUT_VENDOR)/etc/TSP1_SPEC_15.txt \
    $(DEVICE_PATH)/configs/qmi/TSP1_SPEC_PRE.txt:$(TARGET_COPY_OUT_VENDOR)/etc/TSP1_SPEC_PRE.txt \
    system/core/libprocessgroup/profiles/cgroups_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_30.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

PRODUCT_PACKAGES += \
    fingerprint_common.rc \
    fstab.qcom \
    fstab.ramplus \
    init.a23xq.rc \
    init.audio.samsung.rc \
    init.fingerprint.rc \
    init.nfc.samsung.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.display_boot.rc \
    init.samsung.bsp.rc \
    init.samsung.display.rc \
    init.samsung.power.rc \
    init.samsung.rc \
    init.target.rc \
    init.vendor.onebinary.rc \
    init.vendor.rilcommon.rc \
    init.vendor.sysfw.rc \
    ueventd.qcom.rc \
    vendor.samsung.rilchip.qcom.rc \
    wifi_qcom.rc \
    wifi_sm6375.rc

PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.display_boot.sh \
    init.qti.early_init.sh \
    qca6234-service.sh

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(DEVICE_PATH)/init/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.qcom

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(DEVICE_PATH)/configs/sensors/sns_reg_config:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sns_reg_config \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    hardware/samsung

# Storages
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_CHARACTERISTICS := nosdcard

# Telephony
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Updater
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

AB_OTA_UPDATER := false

# WiFi
PRODUCT_PACKAGES += \
    firmware_WCNSS_qcom_cfg.ini_symlink

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/wifi/icm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/icm.conf \
    $(DEVICE_PATH)/configs/wifi/indoorchannel.info:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/indoorchannel.info \
    $(DEVICE_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/configs/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(DEVICE_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a23xq/a23xq-vendor.mk)
