androidLibrary {
    namespace = "com.example.app"
    compileSdk = 34
    defaultConfig {
        minSdk = 24
        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }
    libraryBuildTypes {
        debug {
            isMinifyEnabled = false
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
        testImplementation("junit:junit:4.13.2")
    }
}
