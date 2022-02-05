import Foundation
/// [제일 작은 수 제거하기](https://programmers.co.kr/learn/courses/30/lessons/12935)

func solution(_ arr:[Int]) -> [Int] {
    guard arr.count > 1 else { return [-1] }
    guard let min = arr.min() else { return [-1] }

    return arr.filter { $0 != min }
}
