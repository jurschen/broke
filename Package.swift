// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [.iOS(.v17)],
    products: [
        // Produktname "Broke" (muss in Xcode so sichtbar sein)
        .library(name: "Broke", targets: ["Broke"])
    ],
    dependencies: [
        // Picker-Dependency mit korrekt referenziertem Product
        .package(url: "https://github.com/alessiorubicini/SFSymbolsPickerForSwiftUI")
        // (oder dein vorheriger Picker-Fork — wichtig ist, dass das Product "SFSymbolsPicker" heißt)
    ],
    targets: [
        .target(
            name: "Broke",
            dependencies: [
                .product(name: "SFSymbolsPicker", package: "SFSymbolsPickerForSwiftUI")
            ],
            path: "Broke",
            exclude: [
                "BrokeApp.swift",      // @main der Demo
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