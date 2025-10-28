// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Broke",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "Broke", targets: ["Broke"]),
    ],
    dependencies: [
        // ← Alessio Rubicini, auf Branch statt Version pinnen
        .package(
            url: "https://github.com/alessiorubicini/SFSymbolsPickerForSwiftUI.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "Broke",
            dependencies: [
                // ← Product-Name + Paket-IDENTITÄT müssen zusammenpassen
                .product(name: "SFSymbolsPicker", package: "SFSymbolsPickerForSwiftUI")
            ],
            path: "Broke",
            exclude: [
                // @main der Demo + Projektdateien ausschließen
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