// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-MavenGHPackages-GHReleaseVersions/co/touchlab/mavenghpackagesghreleaseversions/shared-kmmbridge/1.2.63/shared-kmmbridge-1.2.63.zip"
let remoteKotlinChecksum = "a0bbb5c57f1b9dd41d2c06439060ebfd7cd45e9c9f82c8aea4e259f73fd58309"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)