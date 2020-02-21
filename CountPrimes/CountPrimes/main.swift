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
        var primes:[Int] = []
        for element in 2 ..< n {
            for index in 2 ..< element{
                if element / index != 0 {
                    primes.append(element)
                    break
                }
            }
        }
        return primes.count
    }
    
    func checkPrimeNumber(_ n: Int) -> Bool {
        var isPrime = true
        for i in 2 ..< n {
            if n / i == 0 {
                isPrime = false
            }
        }
        return isPrime
    }
}

let s = Solution()
print(s.checkPrimeNumber(10))
