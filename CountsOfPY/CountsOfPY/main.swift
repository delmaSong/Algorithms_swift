//
//  main.swift
//  CountsOfPY
//
//  Created by delma on 2020/03/16.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func solution(_ s:String) -> Bool {
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}

print(solution("Pyy"))
print(solution("pPoooyY"))
