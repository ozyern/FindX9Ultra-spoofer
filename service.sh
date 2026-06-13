#!/system/bin/sh
# ============================================================
# OPPO Find X9 Ultra Spoof | service.sh
# CPH2841 global identity + Snapdragon 8 Elite Gen 5 class props
# ============================================================

export PATH="/data/adb/ksu/bin:/data/adb/magisk:/data/adb/ap/bin:/sbin:/system/bin:/system/xbin:$PATH"

# Wait for Android to finish booting.
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Let late-init/OPlus hooks settle before applying resetprop overrides.
sleep 8

FP="OPPO/CPH2841/CPH2841:16/AP4A.250605.001/T.250610:user/release-keys"
OPLUS_VERSION="CPH2841_16.0.0.250610"

# Device identity.
resetprop ro.product.brand "OPPO"
resetprop ro.product.manufacturer "OPPO"
resetprop ro.product.name "CPH2841"
resetprop ro.product.device "CPH2841"
resetprop ro.product.model "CPH2841"
resetprop ro.product.marketname "OPPO Find X9 Ultra"
resetprop ro.build.product "CPH2841"
resetprop ro.build.brand "OPPO"
resetprop ro.build.manufacturer "OPPO"
resetprop ro.build.tags "release-keys"
resetprop ro.build.type "user"
resetprop ro.build.version.release "16"
resetprop ro.build.version.sdk "36"
# ro.build.version.security_patch intentionally left at system default.

# Fingerprints.
resetprop ro.build.fingerprint "$FP"
resetprop ro.system.build.fingerprint "$FP"
resetprop ro.vendor.build.fingerprint "$FP"
resetprop ro.product.build.fingerprint "$FP"
resetprop ro.odm.build.fingerprint "$FP"
resetprop ro.system_ext.build.fingerprint "$FP"

# Partition props.
for part in system vendor odm product; do
    resetprop "ro.product.$part.brand" "OPPO"
    resetprop "ro.product.$part.manufacturer" "OPPO"
    resetprop "ro.product.$part.model" "CPH2841"
    resetprop "ro.product.$part.name" "CPH2841"
    resetprop "ro.product.$part.device" "CPH2841"
done

# Attestation-facing props.
resetprop ro.product.brand_for_attestation "OPPO"
resetprop ro.product.device_for_attestation "CPH2841"
resetprop ro.product.manufacturer_for_attestation "OPPO"
resetprop ro.product.model_for_attestation "CPH2841"
resetprop ro.product.name_for_attestation "CPH2841"

# ColorOS / OPlus.
resetprop ro.vendor.oplus.version "$OPLUS_VERSION"
resetprop ro.oplus.version "$OPLUS_VERSION"
resetprop ro.oplus.regionmark "GLOBAL"
resetprop ro.product.characteristics "phone"

# SoC identity.
resetprop ro.soc.model "SM8850-AC"
resetprop ro.soc.manufacturer "QTI"

# RAM class.
resetprop ro.config.hw_ram_gb "16"
resetprop ro.product.mem_size_mb "16384"
resetprop ro.sf.total_ram_mb "16384"

# Performance / app experience.
resetprop ro.vendor.qti.sys.fw.bservice_enable "true"
resetprop ro.vendor.qti.sys.fw.bservice_limit "5"
resetprop ro.vendor.qti.sys.fw.bservice_age "5000"
resetprop ro.config.max_starting_bg "8"
resetprop ro.sys.fw.bg_apps_limit "60"
resetprop persist.vendor.qti.inputopts.enable_motionpred "true"
resetprop persist.vendor.qti.inputopts.movedist "2"
resetprop persist.sys.oplus.perf_mode "1"
resetprop ro.vendor.oplus.game.flowchecker.enable "1"
resetprop ro.vendor.oplus.hypercooling "1"
resetprop ro.config.hw_quickpoweron "true"
resetprop sys.use_fifo_ui "1"
