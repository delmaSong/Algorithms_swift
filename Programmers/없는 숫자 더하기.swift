//
//  main.swift
//  ProblemSolving
//
//  Created by Delma Song on 2022/03/14.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}

print(solution([1,2,3,4,6,7,8,0]))

