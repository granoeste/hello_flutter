#!/bin/bash
set -e

flutter doctor -v

# echo "$GOOGLE_PLAY_UPLOAD_KEY" | base64 --decode > android/fake_upload.jks
# echo "$GOOGLE_PLAY_UPLOAD_KEY_PROPERTIES" | base64 --decode > android/key.properties
# ls -ls android

# flutter build apk --release

cd android
fastlane -v
sudo fastlane update_fastlane

# fastlane deploy_play_store
