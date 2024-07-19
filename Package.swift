// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "crash-repro",
    targets: [
        .executableTarget(name: "crash-repro"),
        .testTarget(name: "SomeTests")
    ]
)
