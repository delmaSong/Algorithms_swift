//
//  main.swift
//  IsomorphicStrings
//
//  Created by delma on 28/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if countVowelConsonant(str: s) == countVowelConsonant(str: t) {
            return true
        }else {
            return false
        }
    }
    
    func countVowelConsonant(str: String) -> (vowelsCount: Int, consonantCount: Int, strCount: Int) {
        let vowels = ["a", "e", "i", "o", "u"]
        var vowelCount = 0
        var consonantCount = 0
        
        for element in str {
            if vowels.contains(String(element)) {
                vowelCount += 1
            }else {
                consonantCount += 1
            }
        }
        
        return (vowelCount, consonantCount, str.count)
    }
}

let s = Solution()
print(s.isIsomorphic("foo", "bar"))
