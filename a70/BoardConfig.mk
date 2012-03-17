USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/micromax/a70/BoardConfigVendor.mk

# a70 Board
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := a70

# Board identifier
TARGET_BOOTLOADER_BOARD_NAME := thunderg
TARGET_OTA_ASSERT_DEVICE := thunderg

# Target Boot & Recovery
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_NO_RECOVERY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/micromax/a70/recovery/recovery_ui.c

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Browser
JS_ENGINE := v8

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# DexPreOpt
WITH_DEXPREOPT := true

# FM Radio
# BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := thunderg
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_EGL_CFG := vendor/micromax/a70/proprietary/lib/egl/egl.cfg
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_DO_NOT_SETS_CAN_DRAW := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true

# JIT
WITH_JIT := true
ENABLE_JSC_JIT := true

# Kernel
BOARD_KERNEL_CMDLINE := mem=212M console=ttyMSM2 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# Mass Storage
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_sdcc.1/mmc_host"

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL:=true

# Target Misc.
TARGET_PROVIDES_INIT_TARGET_RC := true
#TARGET_PROVIDES_LIBRIL := true

# WiFi (VER_0_6_X does not search networks)
BOARD_WLAN_DEVICE := bcm4325
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_5_X

# fix this up by examining /proc/mtd on a running device
#dev:    size   erasesize  name
#mtd0: 00500000 00020000 "boot"
#mtd1: 00080000 00020000 "panic"
#mtd2: 09100000 00020000 "system"
#mtd3: 05f00000 00020000 "cache"
#mtd4: 0be00000 00020000 "userdata"
#mtd5: 00500000 00020000 "recovery"
#mtd6: 00040000 00020000 "misc"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09100000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0be00000
BOARD_FLASH_BLOCK_SIZE := 131072


TARGET_PREBUILT_KERNEL := device/micromax/a70/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
