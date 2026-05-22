rootProject.name = "pf2e-return-of-the-runelords-conversion"

pluginManagement {
    repositories {
        maven {
            url = uri("https://maven.pkg.github.com/bernhardposselt/pf2e-kingmaker-tools")
            credentials {
                username = "bernhardposselt"
                password = System.getenv("GITHUB_PACKAGES_TOKEN")
            }
        }
        gradlePluginPortal()
    }
}