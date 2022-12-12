// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-MavenGHPackages-GHReleaseVersions/co/touchlab/mavenghpackagesghreleaseversions/shared-kmmbridge/1.2.35/shared-kmmbridge-1.2.35.zip"
let remoteKotlinChecksum = "0408bf3276fafe6b958495eca16fde9be3779aef48736e93cac865fa9c149812"
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