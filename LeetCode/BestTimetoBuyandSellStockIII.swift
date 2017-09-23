//
//  BestTimetoBuyandSellStockIII.swift
//  LeetCode
//
//  Created by You Tu on 2017/8/20.
//  Copyright © 2017年 You Tu. All rights reserved.
//

/*
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete at most two transactions.
 
 Note:
 You may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
 */

import Cocoa

class BestTimetoBuyandSellStockIII: NSObject {
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 0 else {
            return 0
        }
        let maxProfits = maxProfitForOneTranscation(prices)
        let maxProfitsReversed = maxProfitForOneTranscationReverse(prices)
        var maxProfit = 0
        for index in 0..<prices.count {
            let tempMaxProfit = maxProfits[index] + maxProfitsReversed[index]
            maxProfit = tempMaxProfit > maxProfit ? tempMaxProfit : maxProfit
        }
        
        return maxProfit
    }
    
    func maxProfitForOneTranscation(_ prices: [Int]) -> [Int] {
        var maxProfit = 0
        var currentMinPrice = prices[0]
        var maxProfits = [0]
        
        let remainingPrices = prices[1..<prices.count]
        for price in remainingPrices {
            let possibleMaxProfit = price - currentMinPrice
            maxProfit = possibleMaxProfit > maxProfit ? possibleMaxProfit : maxProfit
            currentMinPrice = price < currentMinPrice ? price : currentMinPrice
            maxProfits.append(maxProfit)
        }
        return maxProfits
    }
    
    func maxProfitForOneTranscationReverse(_ prices: [Int]) -> [Int] {
        var maxProfit = 0
        var currentMaxPrice = prices[prices.count - 1]
        var maxProfits = [0]
    
        for index in (0..<prices.count - 1).reversed() {
            let price = prices[index]
            let possibleMaxProfit = currentMaxPrice - price
            maxProfit = possibleMaxProfit > maxProfit ? possibleMaxProfit : maxProfit
            currentMaxPrice = price > currentMaxPrice ? price : currentMaxPrice
            maxProfits.append(maxProfit)
        }
        return maxProfits.reversed()
    }
}
