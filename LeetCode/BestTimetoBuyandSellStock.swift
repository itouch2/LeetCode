//
//  BestTimetoBuyandSellStock.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

class BestTimetoBuyandSellStock: NSObject {
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        var maxProfit = 0
        var currentMinPrice = prices[0]
        
        let remainingPrices = prices[1..<prices.count]
        for price in remainingPrices {
            let possibleMaxProfit = price - currentMinPrice
            maxProfit = possibleMaxProfit > maxProfit ? possibleMaxProfit : maxProfit
            currentMinPrice = price < currentMinPrice ? price : currentMinPrice
        }
        return maxProfit
    }
}
