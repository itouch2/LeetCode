//
//  RemoveLinkedListElementsTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class RemoveLinkedListElementsTest: XCTestCase {

    func testRemoveElements() {
        let a1 = ListNode(1)
        
        let b1 = ListNode(2)
        a1.next = b1
        
        let c1 = ListNode(6)
        b1.next = c1
        
        let c2 = ListNode(3)
        c1.next = c2
        
        let b2 = ListNode(4)
        c2.next = b2
        
        let a2 = ListNode(5)
        b2.next = a2
        
        let e2 = ListNode(6)
        a2.next = e2
        
        let d2 = ListNode(6)
        e2.next = d2
        
        let remove = RemoveLinkedListElements()
        var head = remove.removeElements(a1, 6)
        
        while head != nil {
            print(head?.val)
            head = head?.next
        }
    }

}
