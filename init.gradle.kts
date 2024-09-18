if (startParameter.projectDir?.name == "agp-dcl-project-sample") {
    beforeSettings {
        rootProject.name = "dcl-demo"

        pluginManagement {
            repositories {
                maven(rootProject.projectDir.parentFile.resolve("gmaven").toURI())
            }

            plugins {
                id("com.android.ecosystem").version("8.8.0-dev")
            }
        }

        dependencyResolutionManagement {
            @Suppress("UnstableApiUsage")
            repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)

            @Suppress("UnstableApiUsage")
            repositories {
                maven("../gmaven")
            }
        }
    }
}