#!/bin/sh

set -e

# validated if created build is debug build 
cd $APK_PATH

APK_NAME=""
EXPECTED_FLAG='application-debuggable'

for file in *.apk
do
  APK_NAME=$file  
done

DEBUGGABLE=`$ANDROID_HOME/build-tools/27.0.3/aapt dump badging $APK_NAME |grep $EXPECTED_FLAG`
if [ $DEBUGGABLE = $EXPECTED_FLAG ]
   then
    echo "Build is debuggable"
fi