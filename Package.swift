// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Aqua",
    dependencies: [
        .package(url: "https://github.com/ivanpetrov16130/AquaCore.git", .branch("development")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Aqua",
            dependencies: ["AquaCore"]),
        .testTarget(
            name: "AquaTests",
            dependencies: ["Aqua"]),
    ]
)
