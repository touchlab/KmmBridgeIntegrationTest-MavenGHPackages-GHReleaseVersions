// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-MavenGHPackages-GHReleaseVersions/co/touchlab/mavenghpackagesghreleaseversions/shared-kmmbridge/1.2.70/shared-kmmbridge-1.2.70.zip"
let remoteKotlinChecksum = "c245a3b66866ebe22848ecf22e55ef463ff3ba5d8d6e7dbfc2192c6cd715bc23"
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