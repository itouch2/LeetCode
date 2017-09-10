//
//  SameTreeTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class SameTreeTest: XCTestCase {

    func testIsSameTree() {
        let sameTree = SameTree()
        let tree1 = TreeNode(2)
        tree1.left = TreeNode(3)
        tree1.right = TreeNode(4)
        
        let tree2 = TreeNode(2)
        tree2.left = TreeNode(3)
        tree2.right = TreeNode(4)
        
        XCTAssertTrue(sameTree.isSameTree(tree1, tree2))
        
        tree2.right = nil
        XCTAssertFalse(sameTree.isSameTree(tree1, tree2))
        
        XCTAssertTrue(sameTree.isSameTree(nil, nil))
    }
}
