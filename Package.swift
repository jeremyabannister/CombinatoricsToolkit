// swift-tools-version: 5.10

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
            "0.8.0" ..< "0.9.0"
        ),
        
        ///
        .package(
            url: "https://github.com/dankogai/swift-combinatorics",
            "0.1.0" ..< "0.2.0"
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
