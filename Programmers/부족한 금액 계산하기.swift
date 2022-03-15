
import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var c = count
    var fee = 0
    while c >= 1 {
        fee += c * price
        c -= 1
    }

    return max(Int64(fee - money), 0)
    /**
     간략한 버전
     return max((count + 1) * count / 2 * price - money , 0)
     */
}

print(solution(3, 20, 4))
