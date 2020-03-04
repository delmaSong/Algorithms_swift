//
//  main.swift
//  MergeSort
//
//  Created by delma on 04/03/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var merged: [Int] = []
    var leftPoint = 0
    var rightPoint = 0
    
    while left.count > leftPoint, right.count > rightPoint {
        if left[leftPoint] > right[rightPoint] {
            merged.append(right[rightPoint])
            rightPoint += 1
        }else {
            merged.append(left[leftPoint])
            leftPoint += 1
        }
    }
    
    while left.count > leftPoint {
        merged.append(left[leftPoint])
        leftPoint += 1
    }
    
    while right.count > rightPoint {
        merged.append(right[rightPoint])
        rightPoint += 1
    }
    
    return merged
}

func split(data: [Int]) -> [Int] {
    if data.count <= 1 { return data }
    
    let medium = Int(data.count / 2)
    
    let left = split(data: Array(data[0..<medium]))
    let right = split(data: Array(data[medium...]))
    
    return merge(left, right)
}

print(split(data: [4,5,1,2,3,7]))



