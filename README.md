# flutter_flavor
        
#Run app in `dev` environment
    flutter run -t lib/main_dev.dart  --flavor=dev --enable-software-rendering
# Run app in debug mode (Picks up debug signing config)
    flutter run -t lib/main_dev.dart  --debug --flavor=dev --enable-software-rendering
# Run app in release mode (Picks up release signing config)
    flutter run -t lib/main_dev.dart  --release --flavor=dev 
# Create appBundle for Android platform. Runs in release mode by default.
    flutter build appbundle -t lib/main_dev.dart  --flavor=dev 
# Create APK for dev flavor. Runs in release mode by default.
    flutter build apk -t lib/main_dev.dart  --flavor=dev