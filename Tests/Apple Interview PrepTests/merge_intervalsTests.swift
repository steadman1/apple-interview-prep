//
//  merge_intervalsTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct merge_intervalsTests {  
    @Test
    func testMergeIntervalsEmpty() async throws {
        #expect(Merge.merge([]) == [])
    }
    
    @Test
    func testMergeIntervalsSingle() async throws {
        #expect(Merge.merge([[1, 2]]) == [[1, 2]])
    }
    
    @Test
    func testMergeIntervalsMultiple() async throws {
        #expect(
            Merge.merge([[1, 3], [2, 6], [8, 10], [15, 18]]) == [[1, 6], [8, 10], [15, 18]]
        )
        
        #expect(
            Merge.merge([[1, 4], [4, 5]]) == [[1, 5]]
        )
        
        #expect(
            Merge.merge([[1012, 1136], [1137, 1417], [1015, 1020]]) == [[1012, 1136], [1137, 1417]]
        )
    }
}
