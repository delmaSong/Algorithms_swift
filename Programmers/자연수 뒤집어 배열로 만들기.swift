//
//  main.swift
//  ProblemSolving
//
//  Created by Delma Song on 2022/03/14.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    /**
     간략한 버전
     return "\(n)".compactMap { $0.hexDigitValue }.reversed()
     */

    var arr: [Int] = []
    let str = String(n)
    str.forEach {
        arr.append(Int(String($0))!)
    }

    return arr.reversed()
}

let v = solution(12345)
print(v)

