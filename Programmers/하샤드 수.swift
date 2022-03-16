
import Foundation

func solution(_ x:Int) -> Bool {
    return x % Array(String(x)).compactMap { Int(String($0)) }.reduce(0, +) == 0
}

print(solution(10))
