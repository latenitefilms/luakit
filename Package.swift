// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LuaKit",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "LuaKit",
            targets: ["LuaKit"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LuaKit",
            dependencies: [],            
            swiftSettings: [
                .unsafeFlags(["-Xfrontend", "-validate-tbd-against-ir=none"])
            ]
        ),
        .testTarget(
            name: "LuaKitTests",
            dependencies: ["LuaKit"]),
    ]
)
