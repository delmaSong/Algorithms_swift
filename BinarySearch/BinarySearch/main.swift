//
//  main.swift
//  BinarySearch
//
//  Created by delma on 2020/03/06.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func binarySearch(_ array: [Int], _ target: Int) -> Bool {
    if array.count == 1, array[0] == target { return true }
    if array.count == 1, array[0] != target { return false }
    
    let medium = array[array.count / 2]
    
    if medium < target {
       return binarySearch(Array(array[medium...]), target)
    }else if medium > target {
        return binarySearch(Array(array[..<medium]), target)
    }else if medium == target {
        return true
    }
    
    return false
}

let arr = [2,3,4,5,6,7]

print(binarySearch(arr, 4))


