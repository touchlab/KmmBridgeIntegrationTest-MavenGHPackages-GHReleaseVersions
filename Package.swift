// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-MavenGHPackages-GHReleaseVersions/co/touchlab/mavenghpackagesghreleaseversions/shared-kmmbridge/1.2.11/shared-kmmbridge-1.2.11.zip"
let remoteKotlinChecksum = "45d9a31e181e24df4b560344c25c44c140a1e01018ef5cdcceddb0579d6854f5"
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