//
//  merge_intervalsTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct two_sumTests {  
    @Test
    func testTwoSum() async throws {
        #expect(TwoSum.twoSum([0, 0], 0) == [0, 1])
        #expect(TwoSum.twoSum([2, 7, 11, 15], 9) == [0, 1])
        #expect(TwoSum.twoSum([3, 2, 4], 6) == [1, 2])
        #expect(TwoSum.twoSum([3, 3], 6) == [0, 1])
    }
}
