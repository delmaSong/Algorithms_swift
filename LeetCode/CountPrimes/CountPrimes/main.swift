//
//  main.swift
//  CountPrimes
//
//  Created by delma on 14/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    func countPrimes(_ n: Int) -> Int {
        var counts = 0
        for elements in 2..<n {
            if getEliquot(elements) == 2 {
                counts += 1
            }
        }
        return counts
    }
    
    func getEliquot(_ number: Int) -> Int {
        var eliCounts = 2
        for element in 2..<number {
            if number % element == 0 {
                eliCounts += 1
            }
        }
        
        return eliCounts
    }
    
}

let s = Solution()
print(s.countPrimes(10))
//print(s.getEliquot(12))
