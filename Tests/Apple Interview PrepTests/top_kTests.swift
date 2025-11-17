//
//  top_kTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct top_kTests {  
    @Test
    func testTopK() async throws {
        #expect(TopK.topKFrequent([1, 1, 1, 2, 2, 3], 2) == [1, 2])
        #expect(TopK.topKFrequent([1], 1) == [1])
        #expect(TopK.topKFrequent([1, 2, 1, 2, 1, 2, 3, 1, 3, 2], 2) == [1, 2])
    }
}
