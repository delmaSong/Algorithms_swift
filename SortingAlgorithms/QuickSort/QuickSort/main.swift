//
//  main.swift
//  QuickSort
//
//  Created by delma on 05/03/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func quickSort(_ data: [Int]) -> [Int] {
    if data.count <= 1 { return data }
    
    var left: [Int] = []
    var right: [Int] = []
    let pivot = data[0]
    
    for index in 1..<data.count {
        if pivot > data[index] {
            left.append(data[index])
        }else {
            right.append(data[index])
        }
    }
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort([3,6,1,8,0,7,4,2]))
