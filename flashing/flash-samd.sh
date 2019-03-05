#!/bin/bash
SAMD_BIN="badgefw.ino.disobey.bin"

echo "***"
echo "This is a SAMD firmware upload script. Hope you run this with root."
if [ -z $1 ]; then
    echo "No parameter given. Hope you're running this from the directory containing a valid .bin file with SAMD firmware."
else
    if [ $1 == '*.bin']; then
        echo "You're given a parameter, hope it's the path to a valid SAMD bin file."
        SAMD_BIN = $1
    fi
fi

echo "Check that a badge is connected and ready to flash."
TEMP=$(lsusb | grep "1209:2003" | wc -l)
if [ "$TEMP" -ne "1" ]; then
    echo "Is there one badge connected? If not, reconnect the badge. To force the SAMD upload, reconnect it with shorted SW2 points."
    exit 1
fi
echo "***"
echo "Badge is connected. Proceeding..."

if [ -e $SAMD_BIN ]; then
    echo "File $SAMD_BIN exists. Let's try to flash it."
    dfu-util -D $SAMD_BIN -R -d 1209:2003 2>&1 | tee temp_res
    TEMP=$(cat temp_res |  grep "No error condition is present" | wc -l)
    rm temp_res
    if [ "$TEMP" -ne "1" ]; then
        echo "Seems like upload failed. Please retry."
        exit 1
    fi
    echo "Seems like everything went just fine."
    echo "Disconnect the badge before trying to flash it with ESP32 software."
    echo "*** SUCCESS ***"
fi