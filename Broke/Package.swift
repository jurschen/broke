// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "Broke", targets: ["Broke"])
    ],
    targets: [
        .target(name: "Broke", path: "Broke") // <– Pfad anpassen, wo die Swift-Dateien liegen
    ]
)