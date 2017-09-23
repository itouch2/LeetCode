//
//  LeetCodeTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/23.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class LeetCodeTest: XCTestCase {
    
    func testHasPathSum() {
        let pathSum = PathSum()
        let node1 = TreeNode(3)
        let node2 = TreeNode(5)
        let node3 = TreeNode(8)
        node1.left = node2
        node2.right = node3
        XCTAssertTrue(pathSum.hasPathSum(node1, 16))
        XCTAssertFalse(pathSum.hasPathSum(node1, 8))
        XCTAssertTrue(pathSum.hasPathSum(node2, 13))
        XCTAssertFalse(pathSum.hasPathSum(node3, 2))
    }
    
    func testInsertionSortList() {
        let insertion = InsertionSortList()
        let node1 = ListNode(3)
        let node2 = ListNode(2)
        let node3 = ListNode(1)
        
        node1.next = node2
        node2.next = node3
        
        var p = insertion.insertionSortList(node1)
        while p !== nil {
            print(" \(p?.val)")
            p = p?.next
        }
    }

}
