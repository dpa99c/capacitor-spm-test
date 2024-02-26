// swift-tools-version: 5.9
import PackageDescription

// DO NOT MODIFY THIS FILE - managed by Capacitor CLI commands
let package = Package(
    name: "CapApp-SPM",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapApp-SPM",
            targets: ["CapApp-SPM"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor6-spm-test.git", branch: "main"),
        .package(name: "CapacitorApp", path: "../../../node_modules/@capacitor/app"),
        .package(name: "CapacitorCamera", path: "../../../node_modules/@capacitor/camera"),
        .package(name: "CapacitorSplashScreen", path: "../../../node_modules/@capacitor/splash-screen"),
    ],
    targets: [
        .target(
            name: "CapApp-SPM",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor6-spm-test"),
                .product(name: "Cordova", package: "capacitor6-spm-test"),
                .product(name: "CameraPlugin", package: "CapacitorCamera"),
                .product(name: "SplashScreenPlugin", package: "CapacitorSplashScreen")
            ]
        )
    ]
)




