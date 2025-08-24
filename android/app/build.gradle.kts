android {
    namespace = "com.example.walletly"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.walletly"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    // 🔹 Flavors
    flavorDimensions += "env"
    productFlavors {
        create("dev") {
            dimension = "env"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
            resValue("string", "app_name", "Walletly Dev")
            // Optional: manifestPlaceholders["appIcon"] = "@mipmap/ic_launcher_dev"
        }
        create("staging") {
            dimension = "env"
            applicationIdSuffix = ".staging"
            versionNameSuffix = "-staging"
            resValue("string", "app_name", "Walletly Staging")
            // Optional: manifestPlaceholders["appIcon"] = "@mipmap/ic_launcher_staging"
        }
        create("prod") {
            dimension = "env"
            // No suffix for production
            resValue("string", "app_name", "Walletly")
            // Optional: manifestPlaceholders["appIcon"] = "@mipmap/ic_launcher"
        }
    }

    buildTypes {
        getByName("debug") {
            // If you want different debug behaviors per flavor, keep defaults here.
            // matchingFallbacks += listOf("debug")
        }
        getByName("release") {
            // TODO: set up a real signing config for release
            signingConfig = signingConfigs.getByName("debug")
            isMinifyEnabled = false
            // proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
}
