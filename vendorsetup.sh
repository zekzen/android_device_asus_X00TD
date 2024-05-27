rm -rf device/asus
git clone --depth=1 https://github.com/Tiktodz/android_device_asus_X00TD -b matrixx-4.19 device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/Tiktodz/android_vendor_asus_X00TD -b udc-4.19 vendor/asus

rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b tree kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/qcom/sepolicy-legacy-um
git clone --depth=1 https://github.com/sotodrom/android_device_qcom_sepolicy -b lineage-21.0-legacy-um device/qcom/sepolicy-legacy-um

rm -rf device/lineage/sepolicy
git clone --depth=1 https://github.com/sotodrom/android_device_lineage_sepolicy -b 14 device/lineage/sepolicy

rm -rf frameworks/base
git clone --depth=1 https://github.com/Tiktodz/android_frameworks_base frameworks/base

rm -rf vendor/lineage-priv

export TZ=Asia/Jakarta
