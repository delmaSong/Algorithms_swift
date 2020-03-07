//
//  main.swift
//  StackProgression
//
//  Created by delma on 05/03/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func stackProgression() {
    let number = Int(readLine()!)!
    var operatorArray: [Character] = []
    var stack:[Int] = []
    var count = 1
    
    for _ in 1..<number+1 {
        let data = Int(readLine()!)!
        while count <= data {
            stack.append(count)
            count += 1
            operatorArray.append("+")
        }
        if stack.last! == data {
            stack.removeLast()
            operatorArray.append("-")
        }else {
            print("NO")
            break
        }
    }

    for i in operatorArray {
        print(i)
    }
}


stackProgression()
