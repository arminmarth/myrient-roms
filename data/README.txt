Installing Android:
1. Use a MicroSD card imagining tool of choice to flash the update.img file onto a >= 4GB MicroSD card (Balena Etcher, Raspberry Pi Imager, Ubuntu's built-in Disks utility, dd, etc.)
2. Power off your RG353, remove the cable from the port labeled "DC" (if you currently have one plugged in) & remove all MicroSD cards from it
3. Plug the MicroSD card you flashed previously into your RG353's "TF1/INT" MicroSD card slot and power it on
4. Plug your RG353's charger into the port labeled "DC" to ensure your device doesn't run out of power mid-flash
5. You will see a "Installing system update" message on your RG353's screen, go drink a beverage of choice, this will take a while
6. After 15 minutes or so you will see a message asking you to "please remove the sdcard......", do so and your device should reboot (if not, long press the power button manually)
7. You will see a "Erasing" message on your RG353's screen, after its done your device will reboot into Android automatically

Installing Magisk:
1. Download the latest Magisk APK from https://github.com/topjohnwu/Magisk/releases/latest (at the time of writing, Magisk-v25.2.apk)
2. Connect your (running) RG353 to your PC by plugging a data-compatible USB cable into the "DC" port, depending on what model you're using it might be required to flip the Type-C connector over before it appears on your PC
3. Copy the previously downloaded Magisk APK onto your RG353
4. Use the included "Files" app on your RG353 to select and install the previously copied Magisk APK file
5. Start the Magisk app and allow it to reboot your device

Installing Google Apps:
1. Install Magisk as explained above
2. Download the latest LiteGapps Magisk module for Android 12.0 from https://sourceforge.net/projects/litegapps/files/litegapps/arm64/31/core (at the time of writing, [MAGISK]LiteGapps_Core_arm64_12.0_v2.5_official.zip)
3. Connect your (running) RG353 to your PC by plugging a data-compatible USB cable into the "DC" port, depending on what model you're using it might be required to flip the Type-C connector over before it appears on your PC
4. Copy the previously downloaded LiteGapps ZIP onto your RG353
5. Open the "Magisk" app on your RG353 and tap on "Modules" followed by "Install from storage"
6. Navigate to your previously copied over LiteGapps ZIP file and tap on it
7. Wait for the LiteGapps installation to complete, then tap on "Reboot"
8. Open the "Play Store" app and log in as usual (your device will pretend to be a Google Pixel 6 to circumvent several Google Play Store restrictions)
