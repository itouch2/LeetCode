//
//  PalindromeLinkedListTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class PalindromeLinkedListTest: XCTestCase {

    func testIsPalindrome() {
        // 123321
        let a1 = ListNode(1)
        
        let b1 = ListNode(2)
        a1.next = b1
        
        let c1 = ListNode(3)
        b1.next = c1
        
        let c2 = ListNode(3)
        c1.next = c2
        
        let b2 = ListNode(2)
        c2.next = b2
        
        let a2 = ListNode(1)
        b2.next = a2
        
        let palindrome = PalindromeLinkedList()
        
        let b = palindrome.isPalindrome(a1)        
        XCTAssertTrue(b)
    }

}
