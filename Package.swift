// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "UnifiedLoggingPlus",
    products: [
        .library(name: "UnifiedLoggingPlus", targets: ["UnifiedLoggingPlus"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "UnifiedLoggingPlus", dependencies: []),
    ]
)
