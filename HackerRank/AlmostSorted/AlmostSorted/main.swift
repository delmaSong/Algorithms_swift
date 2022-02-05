//
//  main.swift
//  AlmostSorted
//
//  Created by delma on 2020/07/21.
//  Copyright © 2020 delma. All rights reserved.
//

import Foundation

func almostSorted(arr: [Int]) -> Void {
    var copiedArray = arr
    let sortedArray = arr.sorted()
    var differenceIndex: [Int] = []
    var loopCount = 0
    while loopCount < arr.count {
        arr[loopCount] != sortedArray[loopCount] ? differenceIndex.append((loopCount)) : nil
        loopCount += 1
    }
    guard differenceIndex.count > 1 else { return print("no") }
    if differenceIndex.count == 2 {
        copiedArray.swapAt(differenceIndex[0], differenceIndex[1])
        guard copiedArray != sortedArray else { return print("yes\nswap \(differenceIndex[0]+1) \(differenceIndex[1]+1)")}
    } else {
        guard let first = differenceIndex.first, let last = differenceIndex.last else { return print("no")}
        let subArray = copiedArray[first...last]
        let reversedSubArray = subArray.reversed() as [Int]
        for index in 0..<subArray.count {
            copiedArray[index+first] = reversedSubArray[index]
        }
        guard copiedArray != sortedArray else { return print("yes\nreverse \(first+1) \(last+1)")}
        return print("no")    }
}
