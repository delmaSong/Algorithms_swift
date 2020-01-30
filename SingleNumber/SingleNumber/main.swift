//
//  136_SingleNumber.swift
//  Algorithms
//
//  Created by delma on 22/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation
class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var numberCounter: Dictionary<Int, Int> = [:]
        var answerNum = 0
        for i in 0..<nums.count{
            var value = 0
            if numberCounter.keys.contains(nums[i]){
                value = numberCounter[nums[i]]! + 1
            }
            numberCounter[nums[i]] = value
        }
        
        for (k, v) in numberCounter {
            if v == 0{
               answerNum = k
            }
        }
        print(answerNum)
        return answerNum
    }
}
