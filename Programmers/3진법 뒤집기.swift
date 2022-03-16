
import Foundation

func solution(_ n:Int) -> Int {
    /**
     다른 버전
     let flipToThree = String(n,radix: 3)
     let answer = Int(String(flipToThree.reversed()),radix:3)!
     return answer
     */
    let t = String(n, radix: 3, uppercase: true)
    let b = String(t).reversed().reduce("") { String($0) + String($1) }
    return Int(b, radix: 3)!
}

print(solution(45))
