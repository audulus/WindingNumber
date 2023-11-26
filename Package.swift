// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "WindingNumber",
    products: [
        .library(
            name: "WindingNumber",
            targets: ["WindingNumber"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Audulus/libigl-spm", branch: "main"),
    ],
    targets: [
        .target(name: "WindingNumber",
                dependencies: [.product(name: "libigl", package: "libigl-spm")],
                path: ".",
                sources: ["UT_SolidAngle.cpp", "UT_Array.cpp"],
                publicHeadersPath: "."),
    ],
    cxxLanguageStandard: .cxx20
)
