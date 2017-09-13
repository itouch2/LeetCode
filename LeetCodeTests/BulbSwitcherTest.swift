//
//  BulbSwitcherTest.swift
//  LeetCode
//
//  Created by You Tu on 2017/9/13.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import XCTest

class BulbSwitcherTest: XCTestCase {

    func testBulbSwitch() {
        let bulbSwitch = BulbSwitcher()
        XCTAssertEqual(bulbSwitch.bulbSwitch(3), 1)
        XCTAssertEqual(bulbSwitch.bulbSwitch(4), 2)
        XCTAssertEqual(bulbSwitch.bulbSwitch(5), 2)
        XCTAssertEqual(bulbSwitch.bulbSwitch(6), 2)
        XCTAssertEqual(bulbSwitch.bulbSwitch(7), 2)
        XCTAssertEqual(bulbSwitch.bulbSwitch(8), 2)
        XCTAssertEqual(bulbSwitch.bulbSwitch(9), 3)
        XCTAssertEqual(bulbSwitch.bulbSwitch(10), 3)
        
    }
}
