#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := shark

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/blackshark/shark/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shark
PRODUCT_NAME := omni_shark
PRODUCT_BRAND := blackshark
PRODUCT_MODEL := SKR-H0
PRODUCT_MANUFACTURER := blackshark

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shark \
    BUILD_PRODUCT=shark \
    TARGET_DEVICE=shark
