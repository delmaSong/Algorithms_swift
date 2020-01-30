//
//  1991_TreeTraversal.swift
//  Algorithms
//
//  Created by delma on 29/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation
class Traversal{
    var traversals: [String] = []

    func preorder(node: Node) -> [String]{
        if let nodeValue = node.value{
            traversals.append(nodeValue)
        }
        if let leftNode = node.left {
            preorder(node: leftNode)
        }
        if let rightNode = node.right{
            preorder(node: rightNode)
        }
        return traversals
    }
    
    func inorder(node: Node) -> [String]{

        if let leftNode = node.left {
            inorder(node: leftNode)
        }
        if let nodeValue = node.value{
            traversals.append(nodeValue)
        }
        if let rightNode = node.right{
            inorder(node: rightNode)
        }
        return traversals

    }
    
    func postorder(node: Node) -> [String]{

        if let leftNode = node.left {
           postorder(node: leftNode)
       }
       if let rightNode = node.right{
           postorder(node: rightNode)
       }
        if let nodeValue = node.value{
            traversals.append(nodeValue)
        }
        return traversals
    }
    
}
class Node{
    var value: String?
    var left: Node?
    var right: Node?
    
    init(value: String, left: Node?, right: Node?) {
        self.value = value
        self.left = left
        self.right = right
    }
}
