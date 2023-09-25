#
# Copyright (C) 2023 The LineageOS Project
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

-include device/samsung/sm6150-common/BoardConfigCommon.mk

BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

DEVICE_PATH := device/samsung/m51

# Assert
TARGET_OTA_ASSERT_DEVICE := m51

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# GPU
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_m51
TARGET_RECOVERY_DEVICE_MODULES := libinit_m51

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Get non-open-source specific aspects
include vendor/samsung/m51/BoardConfigVendor.mk
