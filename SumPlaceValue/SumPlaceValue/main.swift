//
//  main.swift
//  SumPlaceValue
//
//  Created by delma on 2020/03/17.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 0
    var mok = n / 10
    
    var arr: [Int] = [(n%10)]
    
    while mok >= 10 {
        arr.append(mok % 10)
       mok = mok / 10
        
    }
    arr.append(mok)

    for item in arr {
        answer += item
    }
    return answer
}

print(solution(123))
print(solution(987))
