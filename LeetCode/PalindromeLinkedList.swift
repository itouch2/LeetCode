//
//  PalindromeLinkedList.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Given a singly linked list, determine if it is a palindrome.
 
 Follow up:
 Could you do it in O(n) time and O(1) space?
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class PalindromeLinkedList: NSObject {
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        if head == nil {
            return true
        }
        
        var slow = head, fast = head?.next
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next
            fast = fast?.next
        }
        
        var tail = reverseLinkedList(slow?.next)
        if tail == nil {
            return true
        }
        
        var begin = head, terminate: ListNode? = nil
        if fast != nil {
            // even
            terminate = slow?.next
        } else {
            // odd
            terminate = slow
        }
        
        while begin?.next !== terminate! {
            if begin?.val != tail?.val {
                return false
            }
            begin = begin?.next
            tail = tail?.next
        }
        
        return begin?.val == tail?.val
    }
    
    func reverseLinkedList(_ head: ListNode?) -> ListNode? {
        var pre = head, next = pre?.next
        while next != nil {
            let tmp = next?.next
            next?.next = pre
            pre = next
            next = tmp
        }
        return pre
    }
}
