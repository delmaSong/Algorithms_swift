//
//  main.swift
//  QuickSort
//
//  Created by delma on 15/01/2020.
//  Copyright © 2020 delma. All rights reserved.
//
import Foundation


func inputNumber() -> [Int]{
    var numbers = [Int]()

    let count = readLine()!
    for _ in 1...Int(count)!{
        let number = readLine()!
        numbers.append(Int(number)!)
    }
    return numbers
}



func quickSort(_ targetArray:[Int]) -> [Int]{
    if targetArray.count <= 1{
        return targetArray
    }
    var numbers = targetArray
    let pivot = numbers[0]
    var leftList = [Int]()
    var rightList = [Int]()
    numbers.removeFirst()
    for i in 0..<numbers.count {
        if pivot > numbers[i]{
            leftList.append(numbers[i])
        }else {
            rightList.append(numbers[i])
        }
    }
    
    return quickSort(leftList) + [pivot] + quickSort(rightList)
}

func printArray(_ sortedArray: [Int]){
    for element in sortedArray{
        print(element)
    }
}
