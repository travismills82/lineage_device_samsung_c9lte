#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common c9lte-common
-include device/samsung/c9lte-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/c9ltechn

# Includes
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := c9ltechn,c9lte

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4815060992
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57151545344 # 57151565824 - 20480 (footer)
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Protobuf
PROTOBUF_SUPPORTED := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/c9ltechn/ril
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm7260
TARGET_HAS_DUALSIMS := true
#TARGET_RIL_VARIANT := caf

# inherit from the proprietary version
-include vendor/samsung/c9ltechn/BoardConfigVendor.mk
