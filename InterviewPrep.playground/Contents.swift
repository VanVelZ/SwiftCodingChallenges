import Foundation
import Darwin


func menFromBoys(_ arr: [Int]) -> [Int] {
    let evenNumbers = Set(arr.filter{$0 % 2 == 0})
    let oddNumbers = Set(arr.filter{$0 % 2 != 0})
    return Array(evenNumbers).sorted() + Array(oddNumbers).sorted().reversed()
}
