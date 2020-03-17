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
    
    for item in String(n) {
        answer += Int(String(item))!
    }
    return answer
}

print(solution(123))
print(solution(987))
