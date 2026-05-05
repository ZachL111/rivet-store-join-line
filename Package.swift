// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "rivet-store-join-line",
    products: [.executable(name: "rivet-store-join-line", targets: ["App"])],
    targets: [.executableTarget(name: "App", path: "src")]
)
