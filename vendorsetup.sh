echo 'Starting to clone  missing source repos for pixel devices'
# hardware_google_pixel-sepolicy
git clone -b lineage-21 git@github.com:LineageOS/android_hardware_google_pixel-sepolicy.git hardware/google/pixel-sepolicy
# device_google_gs-common
git clone -b lineage-21 git@github.com:LineageOS/android_device_google_gs-common.git device/google/gs-common
echo 'Completed missing source repos for pixel devices , proceed with lunch Command'
