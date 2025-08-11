#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a23xq
PRODUCT_DEVICE := a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Vendor Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a23xqnsxx-user 14 UP1A.231005.007 A236BXXSAEYD1 release-keys" \
    BuildFingerprint="samsung/a23xqnsxx/qssi:14/UP1A.231005.007/A236BXXSAEYD1:user/release-keys"
