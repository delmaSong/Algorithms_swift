//
//  202_HappyNumber.swift
//  Algorithms
//
//  Created by delma on 22/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class HappyNumber {
    func isHappy(_ n: Int) -> Bool {
        var initNum = n
        var values:[Int] = []
        while initNum != 1 {
            let numbers = Array(String(initNum))
            var value = 0
            for i in 0..<numbers.count{
                let doubleValue = Int(String(numbers[i]))! * Int(String(numbers[i]))!
                value += doubleValue
            }
            if values.contains(value){
                return false
            }else{
                values.append(value)
            }
            initNum = value
        }
        return true
    }
}
