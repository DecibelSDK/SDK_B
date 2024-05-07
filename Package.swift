// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  
//  Copyright © 2023 Medallia. Use subject to licensing terms.

import PackageDescription

let package = Package(
    name: "sdk-b",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "sdk-b",
            targets: ["SDK_B"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SDK_B",
            path: "SDK_B.xcframework"
        )
    ]
)
