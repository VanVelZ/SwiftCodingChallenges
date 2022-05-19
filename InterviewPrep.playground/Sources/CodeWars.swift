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
public func rowSumOddNumbers(_ row: Int) -> Int {
    return row * row * row
}
public func disemvowel(_ s: String) -> String {
    return ["A", "E", "I", "O", "U"].reduce(s) { partial, letter in
        partial.replacingOccurrences(of: letter, with: "", options: [.caseInsensitive])
    }
}
public func sumOfPositives (_ numbers: [Int] ) -> Int {
    numbers.reduce(0){ partial, number in
        number > 0 ? partial + number : partial
    }
}
public func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / (height * height)
    switch(bmi) {
      case ...18.5:
        return "Underweight"
      case 18.6...25.0:
        return "Normal"
    case 25.1...30:
        return "Overweight"
    case 30...:
        return "Obese"
    default:
        return ""
    }
}
public func firstNonConsecutive (_ arr: [Int]) -> Int? {
    for i in 0..<(arr.count - 2) {
        if arr[i + 1] - arr[i] != 1 {
            return arr[i + 1]
        }
    }
    return nil
}
public func sum_str(_ a:String, _ b:String) -> String {
    return String(Int(a)! + Int(b)!)
    
}
public func squareSum(_ vals: [Int]) -> Int {
    vals.reduce(0) { partial, number in
        partial + number * number
    }
}
public func menFromBoys(_ arr: [Int]) -> [Int] {
    let evenNumbers = Set(arr.filter{$0 % 2 == 0})
    let oddNumbers = Set(arr.filter{$0 % 2 != 0})
    return Array(evenNumbers).sorted() + Array(oddNumbers).sorted().reversed()
}
