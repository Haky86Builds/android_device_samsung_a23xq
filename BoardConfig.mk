#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# Assert
TARGET_OTA_ASSERT_DEVICE := a23xq

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOARD_NAME := SRPVC22C00A

# Security Patch Level
VENDOR_SECURITY_PATCH := 2025-04-01

# Get non-open-source specific aspects
include vendor/samsung/a23xq/BoardConfigVendor.mk
