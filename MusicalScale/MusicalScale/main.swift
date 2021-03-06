//
//  main.swift
//  MusicalScale
//
//  Created by delma on 29/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    
    //before refactoring
    func judgeAscending(_ scale: [Int] ) -> String {
        var sequence = ""
        if scale[0] == 1 {
            for index in 0..<scale.count-1 {
                let element = scale[index]
                if element + 1 != scale[index + 1 ] {
                    return "mixed"
                }
            }
            sequence = "ascending"
        }else if scale[0] == 8 {
            for index in 0..<scale.count-1 {
                let element = scale[index]
                if element - 1 != scale[index + 1 ] {
                    return "mixed"
                }
            }
            sequence = "descending"
        }else {
            return "mixed"
        }
        
        
        return sequence
    }
    
    //after refactoring
    func judge(_ scale: [Int]) -> String {
        var isAscending = true
        var isDescending = true
        
        for index in 0..<scale.count-1 {
            if scale[index] < scale[index + 1] {
                isDescending = false
            }else if scale[index] > scale[index + 1] {
                isAscending = false
            }
            
        }
        
        if isAscending {
            return "ascending"
        }else if isDescending {
            return "descending"
        }else {
            return "mixed"
        }
        
    }
}


let solution = Solution()
print(solution.judgeAscending([1,2,3,4,5,6,7,8]))
print(solution.judgeAscending([8,7,6,5,4,3,2,1]))
print(solution.judgeAscending([1,3,5,6,7,8,4,2]))

