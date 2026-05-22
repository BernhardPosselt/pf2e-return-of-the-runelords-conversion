plugins {
    id("at.posselt.foundryvtt-module") version "0.0.1-SNAPSHOT"
}

group = "at.posselt"
version = "0.0.6"

foundryvttModule {
    githubUser = "BernhardPosselt"
    githubRepo = "pf2e-return-of-the-runelords-conversion"
    foundryToken = providers.environmentVariable("FOUNDRY_RETURN_CONVERSION_TOKEN")
    githubToken = providers.environmentVariable("GITHUB_TOKEN")
}

tasks.named<Zip>("foundryvttModulePackage") {
    val moduleId: String by extra
    from("packs") { into("$moduleId/packs") }
    from("LICENSE") { into("$moduleId/") }
    from("README.md") { into("$moduleId/") }
    from("OpenGameLicense.md") { into("$moduleId/") }
    from("ORC.md") { into("$moduleId/") }
    from("CHANGELOG.md") { into("$moduleId/") }
}