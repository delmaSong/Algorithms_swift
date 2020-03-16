//
//  main.swift
//  CountsOfPY
//
//  Created by delma on 2020/03/16.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    var answer: Bool = false
    var pCount = 0
    var yCount = 0
    
    for character in s {
        if character == "p" || character == "P" {
            pCount += 1
        }else if character == "y" || character == "Y" {
            yCount += 1
        }
    }
    
    if pCount == yCount {
        answer = true
    }
    
    return answer
}

print(solution("Pyy"))
print(solution("pPoooyY"))
