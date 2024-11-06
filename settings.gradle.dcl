pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
        maven {
            url = uri("https://androidx.dev/studio/builds/12578226/artifacts/artifacts/repository")
        }
    }
}

plugins {
    id("com.android.ecosystem").version("8.8.0-dev")
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
        maven {
            url = uri("https://androidx.dev/studio/builds/12578226/artifacts/artifacts/repository")
        }
    }
}

include(":lib")

defaults {
    androidApp {
        compileSdk = 34
    }

    androidLibrary {
        compileSdk = 34
        dependenciesDcl {
            testImplementation("junit:junit:4.13.2")
        }
    }
}