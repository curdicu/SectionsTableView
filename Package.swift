// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "SectionsTableView",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "SectionsTableView",
                    targets: ["SectionsTableView"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/curdicu/UIExtensions.git", .branch("main")),
        ],
        targets: [
            .target(
                    name: "SectionsTableView",
                    dependencies: [
                        "SnapKit",
                        .product(name: "UIExtensions", package: "UIExtensions"),
                    ]
            )
        ]
)
