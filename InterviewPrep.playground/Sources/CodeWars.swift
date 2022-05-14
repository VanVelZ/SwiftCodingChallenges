import Foundation
public func quarter(of month: Int) -> Int {
    let fraction: Double = (Double(month) / 3.0)
    return Int(fraction.rounded(.up))
}

public func findUnique(_ arr: [Int]) -> Int {
    let set = Set(arr)
    var unique: Int = -1
    set.forEach { element in
        let filtered = arr.filter{$0==element}
        if filtered.count == 1 {
            unique = filtered[0]
        }
    }
    return unique
}
public func multipleOf3Or5(_ num: Int) -> Int {
    (0..<num).reduce(0) { partial, number in 
        number % 3 == 0 || number % 5 == 0 ? number + partial : partial
    }
}
public func findDifference(_ a: [Int], _ b: [Int]) -> Int {
    abs(a.reduce(1, *) - b.reduce(1, *))
}
public func multiplicationTable(_ number: Int) -> String {
    (1...10).reduce("") {
        $0 + "\($1) * \(number) = \($1 * number)\($1 == 10 ? "":"\n")"
    }
}
public func warnTheSheep(_ queue: [String]) -> String {
    if queue.last == "wolf" {
        return "Pls go away and stop eating my sheep"
    }
    let reversedQueue = Array(queue.reversed())
    for i in 0..<reversedQueue.count {
        if reversedQueue[i] == "wolf" {
            return "Oi! Sheep number \(i)! You are about to be eaten by a wolf!"
        }
    }
    return ""
}

