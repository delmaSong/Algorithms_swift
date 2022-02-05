//
//  main.swift
//  BlackJack
//
//  Created by delma on 29/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    
    func pickCards(_ inputValue: String, cards: String) -> Int {
        var result = 0
        let standardNum = Int(String(inputValue.split(separator: " ")[1]))!
        let cardNumbers = cards.split(separator: " ").map { Int(String($0))! }
        
        for i in 0..<cardNumbers.count {
            for j in i+1..<cardNumbers.count {
                for k in j+1..<cardNumbers.count {
                    let sum = cardNumbers[i] + cardNumbers[j] + cardNumbers[k]
                    if sum <= standardNum {
                        result = max(result, sum)
                    }
                }
            }
        }
        
        
        
        return result
    }
}

let s = Solution()
print(s.pickCards("5 21", cards: "5 6 7 8 9"))
