//
//  ValidAnagram.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given two strings s and t, write a function to determine if t is an anagram of s.
 
 For example,
 s = "anagram", t = "nagaram", return true.
 s = "rat", t = "car", return false.
 
 Note:
 You may assume the string contains only lowercase alphabets.
 
 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 */

import Cocoa

class ValidAnagram: NSObject {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        let sArray = arrayFromString(s)
        let tArray = arrayFromString(t)
        
        for index in 0..<26 {
            if sArray[index] != tArray[index] {
                return false
            }
        }
        return true
    }
    
    func arrayFromString(_ s: String) -> [Int] {
        var array:[Int] = Array.init(repeating: 0, count: 26)
        for c in s.characters {
            let index = characterValue(c)
            array[index - 97] += 1
        }
        return array
    }
    
    func characterValue(_ a: Character) -> Int {
        let charaterString = String(a)
        let scalars = charaterString.unicodeScalars
        let value = scalars[scalars.startIndex].value
        return Int(value)
    }
}
