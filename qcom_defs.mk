# List of QCOM targets.
MSMSTEPPE := sm6150
TRINKET := trinket

QCOM_BOARD_PLATFORMS += \
    $(MSMSTEPPE) \
    $(TRINKET) \
    atoll \
    bengal \
    blair \
    crow \
    holi \
    kona \
    kalama \
    lahaina \
    lito \
    monaco \
    msm8937 \
    msm8953 \
    msm8996 \
    msm8998 \
    msmnile \
    parrot \
    pineapple \
    sdm660 \
    sdm710 \
    sdm845 \
    sun \
    taro \
    volcano

# List of targets that use video hardware.
MSM_VIDC_TARGET_LIST ?= \
    $(MSMSTEPPE) \
    $(TRINKET) \
    atoll \
    kona \
    lito \
    msm8937 \
    msm8953 \
    msm8996 \
    msm8998 \
    msmnile \
    sdm660 \
    sdm710 \
    sdm845

ifneq (,$(filter 3.18 4.4 4.9 4.14 4.19, $(TARGET_KERNEL_VERSION)))
# List of targets that use master side content protection.
MASTER_SIDE_CP_TARGET_LIST := \
    $(MSMSTEPPE) \
    $(TRINKET) \
    atoll \
    bengal \
    kona \
    lito \
    msm8996 \
    msm8998 \
    msmnile \
    sdm660 \
    sdm710 \
    sdm845
endif

# Kernel Families
6_6_FAMILY := \
    sun

6_1_FAMILY := \
    blair \
    pineapple \
    volcano

5_15_FAMILY := \
    crow \
    kalama \
    monaco

5_10_FAMILY := \
    parrot \
    taro

5_4_FAMILY := \
    holi \
    lahaina

4_19_FAMILY := \
    bengal \
    kona \
    lito

4_14_FAMILY := \
    $(MSMSTEPPE) \
    $(TRINKET) \
    atoll \
    msmnile

4_9_FAMILY := \
    msm8953 \
    qcs605 \
    sdm710 \
    sdm845

4_4_FAMILY := \
    msm8998 \
    sdm660

3_18_FAMILY := \
    msm8937 \
    msm8996

ifeq ($(call is-board-platform-in-list,$(6_6_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 6.6
QCOM_HARDWARE_VARIANT := sm8750
else ifeq ($(call is-board-platform-in-list,$(6_1_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 6.1
QCOM_HARDWARE_VARIANT := sm8650
else ifeq ($(call is-board-platform-in-list,$(5_15_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 5.15
QCOM_HARDWARE_VARIANT := sm8550
else ifeq ($(call is-board-platform-in-list,$(5_10_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 5.10
QCOM_HARDWARE_VARIANT := sm8450
else ifeq ($(call is-board-platform-in-list,$(5_4_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 5.4
QCOM_HARDWARE_VARIANT := sm8350
else ifeq ($(call is-board-platform-in-list,$(4_19_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 4.19
QCOM_HARDWARE_VARIANT := sm8250
else ifeq ($(call is-board-platform-in-list,$(4_14_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 4.14
QCOM_HARDWARE_VARIANT := sm8150
else ifeq ($(call is-board-platform-in-list,$(4_9_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 4.9
QCOM_HARDWARE_VARIANT := sdm845
else ifeq ($(call is-board-platform-in-list,$(4_4_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 4.4
QCOM_HARDWARE_VARIANT := msm8998
else ifeq ($(call is-board-platform-in-list,$(3_18_FAMILY)),true)
TARGET_KERNEL_VERSION ?= 3.18
QCOM_HARDWARE_VARIANT := msm8996
else
QCOM_HARDWARE_VARIANT := $(TARGET_BOARD_PLATFORM)
endif
