androidLibrary {
    namespace = "com.example.app"
    defaultConfig {
        minSdk = 24
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }
    libraryBuildTypes {
        debug {
            isMinifyEnabled = false
            multiDexEnabled = true
        }
        release {
            isMinifyEnabled = true
        }
    }
    lint {
        abortOnError = false
        checkReleaseBuilds = false
    }
    dependenciesDcl {
        implementation("androidx.appcompat:appcompat:1.7.0")
    }
}
