//
//  main.swift
//  LinkedList
//
//  Created by delma on 30/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

class Node {
    var data: Int?
    var next: Node? = nil
    
    init(data: Int) {
        self.data = data
    }
    
}

class NodeManagement {
    var head: Node?
    
    init(data: Int?) {
        guard let nodeData = data else { return }
        self.head = Node(data: nodeData)
    }
    
    func add(data: Int) {
        if self.head == nil {
            self.head = Node(data: data)
        }else{
            var node = self.head
            while ((node?.next) != nil) {
                node = node?.next
            }
            node?.next = Node(data: data)
        }
    }
    
    func description() {
        var node = self.head
        while (node != nil) {
            guard let pureData = node?.data else { return }
            print(pureData)
            node = node?.next
        }
    }
    
    func delete(data: Int) {
        if self.head == nil {
            print("there is no node")
            return
        }
        
        if self.head!.data == data {
            let tmp = self.head
            self.head = self.head?.next
            tmp?.data = nil
        }else {
            var node = self.head
            while ((node?.next) != nil) {
                if node!.next!.data == data {
                    let tmp = node?.next
                    node?.next = node?.next?.next
                    tmp?.data = nil
                }else{
                    node = node?.next
                }
            }
        }
    }
}

let node1 = Node(data: 1)
let node2 = Node(data: 2)
node1.next = node2
let head = node1

let linkedList1 = NodeManagement(data: 1)
linkedList1.add(data: 2)
linkedList1.description()
print("------------------")
linkedList1.delete(data: 3)
linkedList1.description()
