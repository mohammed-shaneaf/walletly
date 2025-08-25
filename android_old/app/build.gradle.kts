android {
    namespace = "com.example.walletly"
    compileSdk = flutter.compileSdkVersion

    defaultConfig {
        applicationId = "com.example.walletly"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}
