// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSQL",
    platforms: [.macOS(.v10_13), .iOS(.v11)],
    products: [
        .library(name: "TreeSitterSQL", targets: ["TreeSitterSQL"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "TreeSitterSQL",
                path: ".",
                exclude: [
                    "binding.gyp",
                    "bindings",
                    "Cargo.toml",
                    "examples",
                    "grammar.js",
                    "LICENSE",
                    "package.json",
                    "README.md",
                ],
                sources: [
                    "src/scanner.cc",
                ],
                resources: [
                    .copy("queries")
                ],
                publicHeadersPath: "bindings/swift",
                cSettings: [.headerSearchPath("src")])
    ]
)
