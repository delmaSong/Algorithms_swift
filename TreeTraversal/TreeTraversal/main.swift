//
//  main.swift
//  TreeTraversal
//
//  Created by delma on 29/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

let leftLeftNode = Node(value: "D", left: nil, right: nil )
let leftNode = Node(value: "B", left: leftLeftNode, right: nil)
let rightLeftNode = Node(value: "E", left: nil, right: nil)
let rightRigthRightNode = Node(value: "G", left: nil, right: nil)
let rightRigthNode = Node(value: "F", left: nil, right: rightRigthRightNode)
let rightNode = Node(value: "C", left: rightLeftNode, right: rightRigthNode)
let node = Node(value: "A", left: leftNode, right: rightNode)

let traversal = Traversal()
//traversal.preorder(node: node)
//traversal.inorder(node: node)
print(traversal.postorder(node: node))
