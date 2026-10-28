// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "RulesCore",
    // iOS 27 is the minimum, for Apple Intelligence. The string form works with tools version 6.2.
    platforms: [.iOS("27.0")],
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
