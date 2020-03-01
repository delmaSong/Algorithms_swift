//
//  main.swift
//  InsertionSort
//
//  Created by delma on 01/03/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func insertionSort(_ array: Array<Int>) -> Array<Int> {
    var arr = array
    
    for compareIndex in 0..<arr.count - 1 {
        for standardIndex in stride(from: compareIndex + 1, to: 0, by: -1){
            if arr[standardIndex] < arr[standardIndex - 1] {
                arr.swapAt(standardIndex, standardIndex - 1)
            }else{
                break
            }
        }
    }
    return arr
}

print(insertionSort([5,3,2,7,4]))
