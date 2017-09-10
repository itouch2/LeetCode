//
//  ValidPalindromeTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class ValidPalindromeTest: XCTestCase {

    func testIsPalindrome() {
        let palindrome = ValidPalindrome()
        XCTAssertTrue(palindrome.isPalindrome("A man, a plan, a canal: Panama"))
        XCTAssertFalse(palindrome.isPalindrome("race a car"))
        XCTAssertFalse(palindrome.isPalindrome("0P"))
    }

}
