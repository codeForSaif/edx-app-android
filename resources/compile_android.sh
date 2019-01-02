#!/bin/sh

set -e

# Clear old outputs if any 
rm -rf OpenEdXMobile/build/
SUCCESS_CODE=0

# Compile app 
echo 'Compiling Android App'
./gradlew assembleProdDebuggable