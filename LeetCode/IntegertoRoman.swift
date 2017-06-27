//
//  IntegerToRoman.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/18.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Given an integer, convert it to a roman numeral.
 
 Input is guaranteed to be within the range from 1 to 3999.
 */

import Cocoa

class IntegerToRoman: NSObject {
    let templates = [
        ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"],
        ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"],
        ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"],
        ["", "M", "MM", "MMM"]
    ];
    
    func intToRoman(_ num: Int) -> String {
        var str = ""
        
        for i in 1...4 {
            let value = Int(pow(10.0, Double(4 - i)))
            str.append(templates[4 - i][(num / value) % 10])
        }
        return str
    }
}
