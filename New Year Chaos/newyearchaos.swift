import Foundation

func minimumBribes(q: [Int]) -> Void {
    var count: Int = 0
    var a = q
    var swapCount: [Int] = Array(repeating: 0, count: q.count)

    var i = 0
    while i < a.count - 1 {
        if a[i] < a[i + 1] {
            i = i + 1
        } else {
            let t = a[i]
            a[i] = a[i + 1]
            a[i + 1] = t

            swapCount[t - 1] += 1
            if swapCount[t - 1] > 2 {
                print("Too chaotic")
                return
            }

            count += 1
            while (a[i] != (i + 1) && i > 0) { i = i - 1 }
        }
    }

    print(count)
}