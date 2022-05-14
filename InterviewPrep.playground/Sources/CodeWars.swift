import Foundation

func findUnique(_ arr: [Int]) -> Int {
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
