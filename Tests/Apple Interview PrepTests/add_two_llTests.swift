//
//  add_two_llTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct AddTwoLLTests {  
    @Test
    func testAddTwoLLEmpty() async throws {
        #expect(
            AddTwoLL.addTwoNumbers(
                nil,
                nil
            ) == nil
        )
    }
    
    @Test
    func testAddTwoLLSingleDigit() async throws {
        #expect(
            AddTwoLL.addTwoNumbers(
                ListNode(0),
                ListNode(0)
            )!.description == "[0]"
        )
    }
    
    @Test
    func testAddTwoLLMultipleDigits() async throws {
        #expect(
            AddTwoLL.addTwoNumbers(
                ListNode(2, ListNode(4, ListNode(3))),
                ListNode(5, ListNode(6, ListNode(4)))
            )!.description == "[7, 0, 8]"
        )
    }
    
    @Test
    func testAddTwoLLMultipleDigitsCarry() async throws {
        #expect(
            AddTwoLL.addTwoNumbers(
                ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))))),
                ListNode(9, ListNode(9, ListNode(9, ListNode(9))))
            )!.description == "[8, 9, 9, 9, 0, 0, 0, 1]"
        )
    }
}
