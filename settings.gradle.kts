rootProject.name = "dcl-demo"

pluginManagement {
    repositories {
        google {
            content {
                includeGroupByRegex("com\\.android.*")
                includeGroupByRegex("com\\.google.*")
                includeGroupByRegex("androidx.*")
            }
        }
        mavenCentral()
        gradlePluginPortal()
        maven("../gmaven")
    }
}

dependencyResolutionManagement {
    @Suppress("UnstableApiUsage")
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)

    @Suppress("UnstableApiUsage")
    repositories {
        google()
        mavenCentral()
        maven("../gmaven")
    }
}

@Suppress("UnstableApiUsage")
defaults {
    androidApp {
        compileSdk = 34
    }

    androidLibrary {
        compileSdk = 34
    }
}

plugins {
    id("com.android.ecosystem").version("8.8.0-dev")
}

include(":lib")