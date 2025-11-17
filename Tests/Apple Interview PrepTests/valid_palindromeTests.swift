//
//  valid_palindromeTests.swift
//  
//
//  Created by Spencer Steadman on 11/17/25.
//

import Testing
@testable import Apple_Interview_Prep

struct valid_palindromeTest {

    @Test(
        "tests true cases for isPalindrome",
        arguments: [
            "A man, a plan, a canal: Panama",
            " ",
        ]
    )
    func testIsPalindromeValid(s: String) async throws {
        #expect(Palindrome.isPalindrome(s))
    }

    @Test(
        "tests false cases for isPalindrome",
        arguments: [
            "race a car",
            "0P"
        ]
    )
    func testIsPalindromeInvalid(s: String) async throws {
        #expect(!Palindrome.isPalindrome(s))
    }
}
