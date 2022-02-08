//
//  이상한 문자 만들기.swift
//  
//
//  Created by Delma Song on 2022/02/06.
// https://programmers.co.kr/learn/courses/30/lessons/12930

import Foundation

func solution(_ s:String) -> String {
    let characters = s.map { String($0) }
    var spaceIndexes: [Int] = []
    for index in 0..<characters.count {
        if characters[index] == " " {
            spaceIndexes.append(index)
        }
    }

    let strArr = s.split(separator: " ")
    let transferredValue = strArr.map { substring -> String in
        var arr = substring.map { String($0) }
        for index in 0..<arr.count {
            arr[index] = index % 2 == 0 ? arr[index].uppercased() : arr[index].lowercased()
        }
        return arr.joined()
    }

    var str = transferredValue.reduce("") { $0 + $1 }
    while !spaceIndexes.isEmpty {
        let value = spaceIndexes.removeFirst()
        str.insert(" ", at: String.Index(utf16Offset: value, in: str))
    }

    return str
}
