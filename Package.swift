// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-humidity",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Humidity", targets: ["Humidity"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main")
    ],
    targets: [
        .target(
            name: "Humidity",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity")
            ]
        ),
        .testTarget(
            name: "Humidity Tests",
            dependencies: [
                .target(name: "Humidity")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
