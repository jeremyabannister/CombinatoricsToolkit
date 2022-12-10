// swift-tools-version: 5.7

///
import PackageDescription

///
let package = Package(
    name: "CombinatoricsToolkit",
    products: [
        .library(
            name: "CombinatoricsToolkit",
            targets: ["CombinatoricsToolkit"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            from: "0.4.3"
        ),
        
        ///
        .package(
            url: "https://github.com/dankogai/swift-combinatorics",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "CombinatoricsToolkit",
            dependencies: [
                
                ///
                .product(
                    name: "Combinatorics",
                    package: "swift-combinatorics"
                ),
                
                ///
                "FoundationToolkit",
            ]
        ),
        .testTarget(
            name: "CombinatoricsToolkit-tests",
            dependencies: [
                
                ///
                "CombinatoricsToolkit",
                
                ///
                .product(
                    name: "FoundationTestToolkit",
                    package: "FoundationToolkit"
                ),
            ]
        ),
    ]
)
