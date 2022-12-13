// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-MavenGHPackages-GHReleaseVersions/co/touchlab/mavenghpackagesghreleaseversions/shared-kmmbridge/1.2.45/shared-kmmbridge-1.2.45.zip"
let remoteKotlinChecksum = "d92b9545a55ce1b3b7e2ce962439404520297cfbb255686c33dce6892e014f64"
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