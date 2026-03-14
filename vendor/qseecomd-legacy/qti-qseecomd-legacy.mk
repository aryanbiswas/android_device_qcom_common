#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PACKAGES += \
    libdrm.vendor

# Get non-open-source specific aspects.
$(call inherit-product-if-exists, vendor/qcom/common/vendor/qseecomd-legacy/qseecomd-legacy-vendor.mk)
