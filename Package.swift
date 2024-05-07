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
            targets: ["SDK_B_Wrapper"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/DecibelSDK/SDK_BR.git",
            from: "1.0.2"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SDK_B",
            path: "SDK_B.xcframework"
        ),
        .target(
            name: "SDK_B_Wrapper",
            dependencies: [
                .target(
                    name: "SDK_B",
                    condition: .when(platforms: [.iOS])
                ),
                .product(
                    name: "sdk-br",
                    package: "SDK_BR",
                    condition: .when(platforms: [.iOS])
                )
            ],
            path: "SDK_B_Wrapper"
        )
    ]
)
