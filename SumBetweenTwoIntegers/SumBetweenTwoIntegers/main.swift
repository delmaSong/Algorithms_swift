//
//  main.swift
//  SumBetweenTwoIntegers
//
//  Created by delma on 2020/03/15.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var answer:Int64 = 0
    var left = a
    var right = b
    
    if left > right {
        while left >= right {
            answer += Int64(right)
            right += 1
        }
    }else if left < right {
        while left <= right {
            answer += Int64(left)
            left += 1
        }
    }else {
        answer = Int64(left)
    }
    
    return answer
}

print(solution(3, 5))
