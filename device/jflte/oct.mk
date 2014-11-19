# OctOS overlay script
$(call shell $(LOCAL_PATH)/oct_overlay)

# Inherit full device make
$(call inherit-product, device/samsung/jflte/full_jflte.mk)
# Enhanced NFC $(call inherit-product, 
$(call inherit-product, vendor/oct/config/nfc_enhanced.mk)
# Inherit some common oct stuff.
$(call inherit-product, vendor/oct/config/common_phone.mk)

# Build TWRP recovery
include $(call all-makefiles-under,vendor/oct/config/twrp)

PRODUCT_NAME := oct_jflte
