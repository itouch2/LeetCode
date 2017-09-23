//
//  InsertionSortList.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/23.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Sort a linked list using insertion sort.
 */

import Cocoa

class InsertionSortList: NSObject {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        let dummyHeader = ListNode(0)
        var cur = head
        while cur != nil  {
            var p = dummyHeader
            while p.next !== nil && (p.next?.val)! <= (cur?.val)! {
                p = p.next!
            }
            let next = cur?.next
            cur?.next = p.next
            p.next = cur
            cur = next
        }
        return dummyHeader.next
    }
}
