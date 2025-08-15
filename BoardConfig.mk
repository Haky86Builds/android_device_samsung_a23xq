#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := a23xq

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOARD_NAME := SRPVC22C00A

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := holi
TARGET_NO_BOOTLOADER := true

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := holi

# Security Patch Level
VENDOR_SECURITY_PATCH := 2025-04-01

# Get non-open-source specific aspects
include vendor/samsung/a23xq/BoardConfigVendor.mk
