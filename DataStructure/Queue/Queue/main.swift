//
//  main.swift
//  Queue
//
//  Created by delma on 30/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Queue{
    var values: [String] = []
    var length: Int
    
    init(length: Int) {
        self.length = length
    }
    
    func enqueue(data: String) {
        guard !isFull() else { return }
        values.append(data)
    }
    
    func dequeue() -> String {
        guard !isEmpty() else { return "queue is empty"}
        return values.removeFirst()
    }
    
    func peek() -> String {
        guard !isEmpty() else { return "queue is empty" }
        return values[0]
    }
    
    func isEmpty() -> Bool {
        return values.count == 0 ? true : false
    }
    
    func isFull() -> Bool {
        return values.count >= length ? true : false
    }
    
}


