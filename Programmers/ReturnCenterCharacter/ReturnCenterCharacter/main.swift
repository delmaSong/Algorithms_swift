//
//  main.swift
//  ReturnCenterCharacter
//
//  Created by delma on 2020/03/15.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    let center = s.count / 2
    var arr: [String] = []
    var answer = ""

    for index in s.indices {
        arr.append(String(s[index]))
    }
    
    if s.count % 2 == 0 {
       answer = arr[center-1] + arr[center]
    }else {
        answer = arr[center]
    }
    
    return answer
}

print(solution("abcde"))
print(solution("qwer"))
