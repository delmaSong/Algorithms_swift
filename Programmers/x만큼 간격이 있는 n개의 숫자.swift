//
//  File.swift
//  
//
//  Created by Delma Song on 2022/02/06.
// [x만큼 간격이 있는 n개의 숫자](https://programmers.co.kr/learn/courses/30/lessons/12954)

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr: [Int64] = []
    for number in 0 ..< n {
        arr.append(Int64(number * x))
    }
    return arr
}
