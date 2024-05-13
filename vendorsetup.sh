rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm636 -b 14-ksu kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace

rm -rf device/asus
git clone --depth=1 https://github.com/sotodrom/device_asus_X00TD -b u device/asus/X00TD

rm -rf vendor/asus
git clone --depth=1 https://github.com/sotodrom/vendor_asus -b u vendor/asus

export TZ=Asia/Jakarta
