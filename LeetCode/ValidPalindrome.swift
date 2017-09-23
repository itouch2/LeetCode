//
//  ValidPalindrome.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/10.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 "A man, a plan, a canal: Panama" is a palindrome.
 "race a car" is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
 */

import Cocoa

class ValidPalindrome: NSObject {
    func isPalindrome(_ s: String) -> Bool {
        if s.characters.count == 0 {
            return true
        }
        
        var i = 0, j = s.characters.count - 1
        while i < j {
            let head = s[s.index(s.startIndex, offsetBy: i)]
            let tail = s[s.index(s.startIndex, offsetBy: j)]
            
            if (!isValidCharacter(head)) {
                i += 1
            } else if (!isValidCharacter(tail)) {
                j -= 1
            } else {
                if head == tail {
                    i += 1
                    j -= 1
                } else {
                    if isValidLetter(head) && isValidLetter(tail) {
                        let headNumber = characterValue(head)
                        let tailNumber = characterValue(tail)
                        
                        guard fabs(Double(headNumber - tailNumber)) == 32 else {
                            return false
                        }
                        i += 1
                        j -= 1
                    } else {
                        return false
                    }
                }
            }
        }
        
        return true
    }
    
    func isValidCharacter(_ c: Character) -> Bool {
        return isValidNumber(c) || isValidLetter(c)
    }
    
    func isValidNumber(_ c: Character) -> Bool {
        if (c >= "0" && c <= "9") {
            return true
        }
        return false
    }
    
    func isValidLetter(_ c: Character) -> Bool {
        if (c >= "A" && c <= "Z") || (c >= "a" && c <= "z")  {
            return true
        } else {
            return false
        }
    }
    
    func characterValue(_ a: Character) -> Int {
        let charaterString = String(a)
        let scalars = charaterString.unicodeScalars
        let value = scalars[scalars.startIndex].value
        return Int(value)
    }
}
