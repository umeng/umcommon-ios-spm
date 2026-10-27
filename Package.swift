// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "UMCommon",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "UMCommon", targets: ["UMCommon", "UMDevice"]),
    ],
    targets: [
        .binaryTarget(
            name: "UMCommon",
            path: "UMCommon.xcframework"
        ),
        .binaryTarget(
            name: "UMDevice",
            path: "UMDevice.xcframework"
        ),
    ]
)
