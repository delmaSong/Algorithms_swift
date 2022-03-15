//
//  main.swift
//  ProblemSolving
//
//  Created by Delma Song on 2022/03/15.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var answer = 0

    for i in 0..<signs.count {
        if signs[i] {
            answer += absolutes[i]
        } else {
            answer -= absolutes[i]
        }

        /**
         간략한 버전 1.
         answer += absolutes[i] * (signs[i] ? 1 : -1)
         */
    }

    /**
     간략한 버전 2.
     return zip(absolutes, signs)
        .map { $1 ? $0 : -$0 }
        .reduce(0, +)

     간략한 버전 3.
     return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
     */
    return answer
}

print(solution([1, 2, 3], [false, false, true]))
