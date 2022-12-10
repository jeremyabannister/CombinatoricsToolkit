//
//  Combinatorics_tests.swift
//  
//
//  Created by Jeremy Bannister on 12/10/22.
//

///
final class Combinatorics_tests: XCTestCase { }

///
extension Combinatorics_tests {
    
    ///
    func test_Combination_seed_size () throws {
        func test (seed: [Int], size: Int, expected: [[Int]]) throws {
            try Combination(seed: seed, size: size)
                .asArray
                .assertEqual(to: expected)
        }
        try test(
            seed: [1, 2, 3],
            size: 2,
            expected: [[1, 2], [1, 3], [2, 3]]
        )
        try test(
            seed: [-2, 7, 12, 5],
            size: 3,
            expected: [[-2, 7, 12], [-2, 7, 5], [-2, 12, 5], [7, 12, 5]]
        )
    }
}
