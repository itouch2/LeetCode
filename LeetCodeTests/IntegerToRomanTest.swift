//
//  IntegerToRomanTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/6/18.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class IntegerToRomanTest: XCTestCase {

    func testIntToRoman() {
        let integerToRoman = IntegerToRoman()
        XCTAssertEqual(integerToRoman.intToRoman(3986), "MMMCMLXXXVI")
        XCTAssertEqual(integerToRoman.intToRoman(12), "XII")
        XCTAssertEqual(integerToRoman.intToRoman(1), "I")
        XCTAssertEqual(integerToRoman.intToRoman(900), "CM")
        XCTAssertEqual(integerToRoman.intToRoman(1234), "MCCXXXIV")
    }

}
