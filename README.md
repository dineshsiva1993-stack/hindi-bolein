# Hindi Bolein – Android app (Capacitor)

## Easiest: build APK on GitHub (no Android Studio)
1. Create a GitHub repo, upload this whole folder, push.
2. Actions tab -> "Build APK" -> download artifact `hindi-bolein-apk` -> install app-debug.apk on the phone.

## Or locally (Node 22, Java 21, Android Studio/SDK)
    ./setup.sh
    cd android && ./gradlew assembleDebug      # or: npx cap open android -> Run

## First run
Open the Speak tab -> pick a situation -> paste your Anthropic API key (sk-ant-...) once. It is stored only on the phone.
Needs a Hindi voice (Settings -> Text-to-speech) and Google speech services for mic input.
