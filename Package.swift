// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "RulesCore",
    // TODO: Set the minimum iOS version once the Apple Intelligence requirement is confirmed.
    // platforms: [.iOS(.v_TODO)],
    products: [
        .library(name: "RulesCore", targets: ["RulesCore"]),
    ],
    targets: [
        .target(
            name: "RulesCore",
            swiftSettings: [.enableUpcomingFeature("ApproachableConcurrency")]
        ),
        .testTarget(
            name: "RulesCoreTests",
            dependencies: ["RulesCore"],
            swiftSettings: [.enableUpcomingFeature("ApproachableConcurrency")]
        ),
    ]
)
