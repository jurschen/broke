// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [.iOS(.v17)], // passt zu SFSymbolsPicker
    products: [
        .library(name: "Broke", targets: ["Broke"]),
    ],
    dependencies: [
        // WICHTIG: richtige URL + Version
        .package(url: "https://github.com/alessiorubicini/SFSymbolsPickerForSwiftUI", from: "1.0.8"),
    ],
    targets: [
        .target(
            name: "Broke",
            // HIER explizit das Product referenzieren:
            dependencies: [
                .product(name: "SFSymbolsPicker", package: "SFSymbolsPicker")
            ],
            path: "Broke",
            exclude: [
                "BrokeApp.swift",        // @main entfernen
                "Info.plist",
                "Assets.xcassets",
                "Preview Content",
                "Broke.xcodeproj",
                "project.xcworkspace",
                "xcuserdata"
            ]
        )
    ]
)
