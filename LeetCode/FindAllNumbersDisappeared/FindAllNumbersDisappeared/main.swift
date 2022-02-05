//
//  main.swift
//  FindAllNumbersDisappeared
//
//  Created by delma on 2020/03/12.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var answer: [Int] = []
        var serialArray: [Int] = []
        var noOverlapArray: Set<Int> = []
        
        if nums.count <= 0 { return [] }
                    
        for number in 1...nums.count {
            serialArray.append(number)
        }
        
        for number in nums {
            noOverlapArray.insert(number)
        }

        for num in serialArray {
            if !noOverlapArray.contains(num) {
                answer.append(num)
            }
        }
        
        return answer
    }
    
}

let s = Solution()
print(s.findDisappearedNumbers([]))
