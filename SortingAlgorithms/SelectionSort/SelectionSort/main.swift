//
//  main.swift
//  SelectionSort
//
//  Created by delma on 28/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func selectionSort(_ array: Array<Int>) -> Array<Int>{
    var arr = array
    for stand in 0 ..< (arr.count - 1) {
        var lowest = stand
        for index in (stand + 1) ..< arr.count {
            if arr[lowest] > arr[index] {
                lowest = index
            }
            let tmp = arr[lowest]
            arr[lowest] = arr[stand]
            arr[stand] = tmp
        }
    }
    return arr
}

print(selectionSort([33,62,234,63,22,24,1,6,4,775,4,354,338,9,2]))
