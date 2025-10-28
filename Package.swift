// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [
        .iOS(.v17) // passt zu SFSymbolsPicker
    ],
    products: [
        .library(
            name: "Broke",
            targets: ["Broke"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Nosajool/SFSymbolsPicker", from: "2.2.0")
    ],
    targets: [
        .target(
            name: "Broke",
            dependencies: ["SFSymbolsPicker"],
            path: "Broke",
            // WICHTIG: App-/Demo-Dateien ausschließen:
            exclude: [
                "BrokeApp.swift",        // enthält @main
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
