#!/bin/bash

URL=https://dl.google.com/android/repository/sdk-tools-darwin-4333796.zip
DST=/opt/android

ANDROID_SDK_VERSION=24.4.1
ANDROID_BUILD_TOOLS_VERSION=23.0.2
ANDROID_API_LEVEL=22

#sudo mkdir -p $DST
#sudo chown $(whoami) $DST
#wget $URL  -P $DST
#unzip $DST/$(basename $URL)  -d $DST 

rm $DST/$(basename $URL) 
/opt/android/tools/bin/sdkmanager
