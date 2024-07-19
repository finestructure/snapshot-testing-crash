// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "crash-repro",
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.17.2")
    ],
    targets: [
        .executableTarget(name: "crash-repro"),
        .testTarget(name: "SomeTests", dependencies: [.product(name: "SnapshotTesting", package: "swift-snapshot-testing")])
    ]
)
