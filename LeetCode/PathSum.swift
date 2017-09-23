//
//  PathSum.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/23.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

/*
 Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
 
 For example:
 Given the below binary tree and sum = 22,
 5
 / \
 4   8
 /   / \
 11  13  4
 /  \      \
 7    2      1
 return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
 */

class PathSum: NSObject {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        return pathSum(root, sum, 0)
    }
    
    func pathSum(_ node: TreeNode?, _ sum: Int, _ total: Int) -> Bool {
        if node == nil {
            return false
        }
        
        let value = total + (node?.val)!
        if value == sum && node?.left == nil && node?.right == nil {
            return true
        }
        return pathSum(node?.left, sum, value) || pathSum(node?.right, sum, value)
    }
}
