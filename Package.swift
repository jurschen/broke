// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Broke", targets: ["Broke"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alessiorubicini/SFSymbolsPickerForSwiftUI.git",
                 from: "2.2.0")
    ],
    targets: [
        .target(
            name: "Broke",
            dependencies: [
                .product(name: "SFSymbolsPicker",
                         package: "SFSymbolsPickerForSwiftUI")
            ],
            path: "Broke",
            exclude: [
                "BrokeApp.swift",
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