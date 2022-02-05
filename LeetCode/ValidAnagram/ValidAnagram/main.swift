//
//  main.swift
//  ValidAnagram
//
//  Created by delma on 28/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        
        if countElement(s) == countElement(t) {
            return true
        }
        return false
    }
    
    func countElement(_ str: String) -> Dictionary<String, Int> {
        var strDic: [String : Int] = [:]
        
        for i in str {
            let key = String(i)
            if let value = strDic[key] {
                strDic[key] = value + 1
            }else {
                strDic[key] = 1
            }
        }
            return strDic
    }
    
}

