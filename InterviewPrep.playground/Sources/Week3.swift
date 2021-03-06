import Foundation

//https://www.hackerrank.com/challenges/three-month-preparation-kit-two-arrays/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-three
public func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    let (first, second) = (A.sorted(), B.sorted{$0 < $1})
    for index in 0..<A.count {
        if first[index] + second[index] < k {
            return "NO"
        }
    }
    return "YES"
}
//https://www.hackerrank.com/challenges/three-month-preparation-kit-the-birthday-bar/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-three
public func birthday(s: [Int], d: Int, m: Int) -> Int {
    var numberOfWaysToDivide = 0
    for index in 0..<s.count {
        if index + m > s.count {return numberOfWaysToDivide}
        
        if (Array(s[index..<index + m]).reduce(0) { partial, a in
            partial + a
        } == d){
            numberOfWaysToDivide+=1
        }
    }
    return numberOfWaysToDivide
}
//https://www.hackerrank.com/challenges/three-month-preparation-kit-migratory-birds/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-three
public func migratoryBirds(arr: [Int]) -> Int {
    // Write your code here
    var occurences: [(Int, Int)] = []
    let sorted = arr.sorted()
    sorted.forEach { bird in
        if let index = occurences.firstIndex(where: { value in
            value.0 == bird
        }) {
            occurences[index].1 += 1
        }
        else {
            occurences.append((bird, 1))
        }
    }
    print(occurences)
    var mostOccured = occurences.first ?? (-1, 0)
    occurences.forEach{
        if mostOccured.1 < $0.1 {
            mostOccured = $0
        }
        else if mostOccured.1 == $0.1 {
            mostOccured = mostOccured.0 < $0.0 ? mostOccured : $0
        }
    }
    return mostOccured.0
}
//https://www.hackerrank.com/challenges/three-month-preparation-kit-maximum-perimeter-triangle/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-three
public func maximumPerimeterTriangle(sticks: [Int]) -> [Int] {
    func isValidTriangle(a: Int, b: Int, c: Int) -> Bool{
        a+b>c && b+c>a && a+c>b
    }
    let sortedSticks:[Int] = sticks.sorted().reversed()
    //1: Figure out which three sticks can form a triangle(a+b>c && b+c>a && a+c>b) 
    for i in 0..<sortedSticks.count - 2 {
        if isValidTriangle(a: sortedSticks[i], b: sortedSticks[i + 1], c: sortedSticks[i + 2]){
            return [sortedSticks[i], sortedSticks[i + 1], sortedSticks[i + 2]].sorted()
        }
    }
    return [-1]
}
public func pageCount(n: Int, p: Int) -> Int {
    // n = page length
    // p = page to arrive at
    let fromFront:Double = floor((Double(p) / 2.0))
    let fromBack:Double = floor(Double((n)) / 2.0)
    return Int(min(fromFront, fromBack - fromFront))
}
