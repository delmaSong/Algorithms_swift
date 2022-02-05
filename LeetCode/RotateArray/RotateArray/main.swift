//
//  main.swift
//  RotateArray
//
//  Created by delma on 21/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int){
        for _ in 0 ..< k {
            let newElement = nums.removeLast()
            nums.insert(newElement, at: 0)
        }
    }
}

let s = Solution()
var arr = [-1, -100, 3, 99]
s.rotate(&arr, 2)
