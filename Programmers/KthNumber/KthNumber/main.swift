//
//  main.swift
//  Algorithm_kthNumber
//
//  Created by delma on 15/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//
import Foundation

let array = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answers = [Int]()

    for command in commands{
        let i = command[0]
        let j = command[1]
        let k = command[2]
        
        let parted = array[i-1...j-1]
        let sorted = parted.sorted()

        answers.append(sorted[k-1])
    }
    
    return answers
}

