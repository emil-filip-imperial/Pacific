plugins {
    kotlin("jvm") version "1.6.10"
    java
    antlr
}

group = "org.empyrean"
version = "0.0"

repositories {
    mavenCentral()
}

kotlin {
    sourceSets {
        main {
            apply {
                kotlin.srcDir("src/main/kotlin")
            }
        }
        val test by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
    }
}

dependencies {
    testImplementation(kotlin("test"))
    antlr("org.antlr:antlr4:4.5")
    implementation(kotlin("stdlib"))
}

tasks {
    generateGrammarSource {
        arguments = arguments + listOf("-visitor")
    }
    test {
        useTestNG()
    }
    jar {
        manifest {
            attributes(
                mapOf(
                    "Implementation-Title" to project.name,
                    "Implementation-Version" to project.version,
                    "Main-Class" to "MainKt"
                )
            )
        }
    }
}
