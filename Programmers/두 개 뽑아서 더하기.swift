
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var answer:[Int] = []
    for i in 0..<numbers.count {
        for j in (i + 1)..<numbers.count {
            answer.append(numbers[i] + numbers[j])
        }
    }

    return Array(Set(answer)).sorted()
}

print(solution([2, 1, 3, 4, 1]))
