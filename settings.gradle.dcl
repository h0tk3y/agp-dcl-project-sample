pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("com.android.ecosystem")
}

dependencyResolutionManagement {
    repositories {
        google()
        mavenCentral()
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