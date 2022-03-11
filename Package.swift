// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "UnifiedLoggingPlus",
    platforms: [.macOS(.v10_12), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "UnifiedLoggingPlus", targets: ["UnifiedLoggingPlus"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "UnifiedLoggingPlus", dependencies: []),
        .testTarget(name: "UnifiedLoggingPlusTests", dependencies: ["UnifiedLoggingPlus"]),
    ]
)
