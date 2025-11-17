//
//  reverse_llTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct ReverseLLTests {  
    @Test
    func testReverseLLEmpty() async throws {
        #expect(ReverseLL.reverseList(nil) == nil)
    }
    
    @Test
    func testReverseLLSingle() async throws {
        #expect(ReverseLL.reverseList(ListNode(1))!.description == "[1]")
    }
    
    @Test
    func testReverseLLTwo() async throws {
        #expect(ReverseLL.reverseList(ListNode(1, ListNode(2)))!.description == "[2, 1]")
    }
    
    @Test
    func testReverseLLFive() async throws {
        #expect(ReverseLL.reverseList(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))!.description == "[5, 4, 3, 2, 1]")
    }
}
