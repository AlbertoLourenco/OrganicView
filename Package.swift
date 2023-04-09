// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "OrganicView",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "OrganicView",
            targets: ["OrganicView"])
    ],
    targets: [
        .target(
            name: "OrganicView"
        )
    ]
)
