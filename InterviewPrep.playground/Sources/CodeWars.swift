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
