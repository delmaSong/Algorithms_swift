//
//  main.swift
//  Stack
//
//  Created by delma on 30/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Stack{
    var values :[String] = []
    
    func push(data: String) {
        values.append(data)
    }
    
    func pop() -> String {
        return !isEmpty() ? values.removeLast() : "stack is empty"
    }
    
    func isEmpty() -> Bool {
        return values.count == 0 ? true : false
    }
    
}


let stack = Stack()
stack.push(data: "1")
stack.push(data: "2")
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.isEmpty())
