//
//  SameTree.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given two binary trees, write a function to check if they are equal or not.
 
 Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 */

class SameTree {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p != nil && q != nil else {
            if p == nil && q == nil {
                return true
            } else {
                return false
            }
        }
        
        if p!.val !=  q!.val {
            return false
        }
        
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
}
