//
//  main.swift
//  CaesarCipher
//
//  Created by delma on 2020/07/23.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let upper = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let lower = upper.map { $0.lowercased() }
    var answer: [String] = []
    
    for item in Array(s) {
        if item.isLowercase {
            let i = (abs((lower.firstIndex(of: String(item))?.distance(to: 0))!) + n) % 26
            answer.append(lower[i])
        } else if !item.isLowercase, item != " " {
            let i = (abs((upper.firstIndex(of: item)?.distance(to: 0))!) + n) % 26
            answer.append(String(upper[i]))
        } else if item == " " {
            answer.append(String(item))
        }
    }
    return answer.reduce("", +)
}



