
import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    /**
     간략한 버전
     let zeroCount = lottos.filter { $0 == 0}.count
     let winCount: Int = win_nums.filter { lottos.contains($0) }.count


     return [min(7-winCount-zeroCount,6), min(7-winCount,6)]
     */

    let zeroCount = lottos.filter { $0 == 0 }.count
    var sameCount = 0

    for i in lottos {
        for j in win_nums {
            if i == j {
                sameCount += 1
            }
        }
    }

    return [grade(v: sameCount + zeroCount), grade(v: sameCount)]
}

func grade(v: Int) -> Int {
    var grade = 0
    switch v {
    case 6: grade = 1
    case 5: grade = 2
    case 4: grade = 3
    case 3: grade = 4
    case 2: grade = 5
    default: grade = 6
    }

    return grade
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
