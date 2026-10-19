#!/usr/bin/env bash
# One-time setup: creates the android/ project and adds mic permissions.
set -e
npm install
[ -d android ] || npx cap add android
python3 - <<'PY'
p='android/app/src/main/AndroidManifest.xml'
s=open(p,encoding='utf8').read()
if 'RECORD_AUDIO' not in s:
    s=s.replace('</manifest>','''    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.INTERNET" />
    <queries><intent><action android:name="android.speech.RecognitionService" /></intent></queries>
</manifest>''')
    open(p,'w',encoding='utf8').write(s)
PY
npx cap sync android
echo "Done. Debug APK: cd android && ./gradlew assembleDebug  -> android/app/build/outputs/apk/debug/app-debug.apk"
