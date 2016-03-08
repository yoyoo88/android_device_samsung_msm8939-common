#
# System Properties for Samsung MSM8939
#

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.adb.secure=0

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d /dev/smd0 \
    persist.radio.use_se_table_only=1 \
    persist.radio.sib16_support=1 \
    persist.radio.embms.support=true \
    persist.radio.multisim.config=dsds \
    ro.ril.telephony.mqanelements=6 \
    ro.multisim.simslotcount=2 \
    ro.multisim.set_audio_params=true \
    ro.telephony.ril_class=SamsungMSM8939RIL \
    ro.telephony.ril.config=simactivation \
    persist.data.qmi.adb_logmask=0

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=false \
    persist.data.netmgrd.qos.enable=false

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    debug.composition.type=c2d \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608

# QC vendor extension
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Wi-Fi, Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ro.qualcomm.bt.hci_transport=smd

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    tunnel.audio.encode=false \
    av.offload.enable=false \
    audio.offload.gapless.enabled=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    use.voice.path.for.pcm.voip=true

# Fluence
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=3183219 \
    media.aac_51_output_enabled=true

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.chipname=MSM8939 \
    ro.qualcomm.cabl=0

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Disable Strict Mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.strictmode.disable=true