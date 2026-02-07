// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FocusDesignSystem",
    platforms: [
        .macOS(.v14),
        .iOS(.v26)
    ],
    products: [
        .library(
            name: "FocusDesignSystem",
            targets: ["FocusDesignSystem"]
        ),
        .library(
            name: "FocusDesignSystemCore",
            targets: ["FocusDesignSystemCore"]
        ),
        .library(
            name: "FocusDesignSystemState",
            targets: ["FocusDesignSystemState"]
        ),
        .library(
            name: "FocusDesignSystemComponents",
            targets: ["FocusDesignSystemComponents"]
        )
    ],
    targets: [
        .target(
            name: "FocusDesignSystemCore"
        ),
        .target(
            name: "FocusDesignSystemState",
            dependencies: ["FocusDesignSystemCore"]
        ),
        .target(
            name: "FocusDesignSystemComponents",
            dependencies: ["FocusDesignSystemCore", "FocusDesignSystemState"]
        ),
        .target(
            name: "FocusDesignSystem",
            dependencies: [
                "FocusDesignSystemCore",
                "FocusDesignSystemState",
                "FocusDesignSystemComponents"
            ]
        ),
        .testTarget(
            name: "FocusDesignSystemCoreTests",
            dependencies: ["FocusDesignSystemCore"]
        ),
        .testTarget(
            name: "FocusDesignSystemStateTests",
            dependencies: ["FocusDesignSystemState"]
        ),
        .testTarget(
            name: "FocusDesignSystemComponentsTests",
            dependencies: ["FocusDesignSystemComponents"]
        )
    ]
)
