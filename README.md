# OPPO Find X9 Ultra Spoof

Magisk / KernelSU / SukiSU module that spoofs device identity as the global OPPO Find X9 Ultra (`CPH2841`) and applies conservative flagship-class runtime props.

This is adapted from the OnePlus 15 spoofer module structure by Ozyern for an OPPO Find X9 Ultra target.

## What It Spoofs

- Brand/manufacturer: `OPPO`
- Model/name/device: `CPH2841`
- Market name: `OPPO Find X9 Ultra`
- Android: `16` / SDK `36`
- ColorOS/OPlus version marker: `CPH2841_16.0.0.250610`
- SoC identity: `SM8850-AC` / Qualcomm Snapdragon 8 Elite Gen 5 class
- RAM class: 16 GB

## Performance Props

The module applies app/runtime-level tuning only:

- Dalvik/ART heap headroom
- 16 GB memory-class props
- Qualcomm background service hints
- OPlus perf/game-mode hints
- SurfaceFlinger wide color and HDR capability flags
- Input latency hints
- ZRAM writeback timing hints

It does not overclock, patch the kernel, change thermal tables, or bypass device-specific power limits.

## Important Notes

- The included fingerprint is a conservative generated `CPH2841` Android 16 fingerprint. Replace it with a dumped stock Find X9 Ultra fingerprint when you have official firmware.
- The security patch prop is intentionally left untouched so the host ROM keeps its own value.
- Spoofing props can break app compatibility or integrity checks. Keep a backup and test carefully.

## Install

1. Flash the ZIP in Magisk, KernelSU, APatch, or SukiSU.
2. Reboot.
3. Verify with:

```sh
getprop ro.product.model
getprop ro.product.marketname
getprop ro.soc.model
```

