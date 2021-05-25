# flutter_flavor


## Page that has been completed

![Screen Shot 2021-05-26 at 4 14 32 AM](https://user-images.githubusercontent.com/36778896/119569388-e22b3480-bdd8-11eb-8148-e5cb70bae880.png)
        
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