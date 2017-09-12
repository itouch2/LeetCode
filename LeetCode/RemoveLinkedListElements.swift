//
//  RemoveLinkedListElements.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Remove all elements from a linked list of integers that have value val.
 
 Example
 Given: 1 --> 2 --> 6 --> 3 --> 4 --> 5 --> 6, val = 6
 Return: 1 --> 2 --> 3 --> 4 --> 5
*/
 
class RemoveLinkedListElements: NSObject {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var newHead = head
        while newHead?.val == val {
            newHead = newHead?.next
        }
        
        var pre = newHead
        var next = newHead?.next
        while next != nil {
            if next?.val == val {
                pre?.next = next?.next
            } else {
                pre = pre?.next
            }
            next = next?.next
        }
        return newHead
    }
}
