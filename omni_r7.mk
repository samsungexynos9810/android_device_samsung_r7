#
# Copyright 2017 The Android Open Source Project
#
# Copyright (C) 2020 Team Win Recovery Project
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

# Inherit from Note 10 Lite device
$(call inherit-product, device/samsung/r7/device.mk)

# Inherit some common Pitch stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := r7
PRODUCT_NAME := omni_r7
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N770F
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := samsung SM-N770F

# Charger
PRODUCT_PACKAGES += \
    charger_res_images
    
# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

# Others
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)
