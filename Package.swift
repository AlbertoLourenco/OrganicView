// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "OrganicView",
    products: [
        .library(name: "OrganicView", targets: ["OrganicView"])
    ],
    targets: [
        .target(
            name: "OrganicView",
            path: "OrganicView"
        )
    ]
)
