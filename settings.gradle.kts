pluginManagement {
    repositories {
        mavenCentral()
        google()
        maven("../aosp/out/repo")
    }
}

plugins {
    id("com.android.ecosystem.plugin").version("8.6.0-dev")
}

include("lib")