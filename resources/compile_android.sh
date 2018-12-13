#!/bin/sh

set -e

# Clear old outputs if any 
rm -rf OpenEdXMobile/build/
SUCCESS_CODE=0

# Compile app 
echo 'Compiling Android App'
OUTPUT=$(./gradlew assembleProdDebuggable |grep 'BUILD SUCCESSFUL')
if [ $? -eq $SUCCESS_CODE ]
    then
    echo "Compiling Successfull with following details, $OUTPUT & Exit Code $?"
else 
    echo "Compiling not Successfull with following details, $OUTPUT & Exit Code $? "
fi   