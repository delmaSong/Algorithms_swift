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
    let minValue = a > b ? b : a
    let maxValue = a > b ? a : b
    
    for index in minValue...maxValue {
        answer += Int64(index)
    }

    return answer
}

print(solution(3, 5))
print(solution(3, 3))
print(solution(5, 3))
