//
//  BestTimetoBuyandSellStockII.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

import Cocoa

class BestTimetoBuyandSellStockII: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        var maxProfit = 0
        var currentMinPrice = prices[0]
        var currentMaxPrice = prices[0]
        
        let remainingPrices = prices[1..<prices.count]
        for price in remainingPrices {
            if price >= currentMaxPrice {
                currentMaxPrice = price
                continue
            }
            
            if price < currentMaxPrice {
                maxProfit += (currentMaxPrice - currentMinPrice)
                currentMinPrice = price
                currentMaxPrice = price
            }
        }
        maxProfit += (currentMaxPrice - currentMinPrice)
        return maxProfit
    }
}
