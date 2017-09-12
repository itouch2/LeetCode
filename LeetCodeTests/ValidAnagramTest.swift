//
//  ValidAnagramTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/12.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class ValidAnagramTest: XCTestCase {

    func testIsAnagram() {
        let anagram = ValidAnagram()
        
        XCTAssertTrue(anagram.isAnagram("anagram", "nagaram"))
        XCTAssertFalse(anagram.isAnagram("rat", "car"))
    }
}
