// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PayEngineSoftPOSPackage",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "PayEngineSoftPOSPackage",
            targets: ["PayEngineSoftPOSPackage", "PEDevicePaymentSDK"]
        ),
    ],
    dependencies: [
        // Add Datadog SDK here
        .package(
            url: "https://github.com/DataDog/dd-sdk-ios.git",
            .upToNextMajor(from: "3.0.0")
        )
    ],
    targets: [
        .binaryTarget(
            name: "PEDevicePaymentSDK",
            path: "./Frameworks/PEDevicePaymentSDK.xcframework"
        ),

        // Wrapper target that links the binary framework + Datadog
        .target(
            name: "PayEngineSoftPOSPackage",
            dependencies: [
                "PEDevicePaymentSDK",
                
                // Add specific products from the Datadog package
                .product(name: "DatadogCore", package: "dd-sdk-ios"),
                .product(name: "DatadogLogs", package: "dd-sdk-ios"),
                .product(name: "DatadogRUM", package: "dd-sdk-ios"),
            ]
        )
    ]
)
