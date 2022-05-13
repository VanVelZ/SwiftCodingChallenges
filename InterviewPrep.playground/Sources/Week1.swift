import Foundation

//https://www.hackerrank.com/challenges/three-month-preparation-kit-plus-minus/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one
//Given an array, print the ratio of positive, negative and zero numbers with 6 decimal places
public func plusMinus(arr: [Int]) -> Void {
    
    var negative:Int = 0,
        postive:Int = 0,
        zero:Int = 0
    
    arr.forEach { number in
        if number == 0{
            zero += 1
        }
        else if number < 0 {
            negative += 1
        }
        else {
            postive += 1
        }
    }
    let positiveRatio = Double(postive) / Double(arr.count)
    let negativeRatio = Double(negative) / Double(arr.count)
    let zeroRatio = Double(zero) / Double(arr.count)
    print(String(format: "%.6f", positiveRatio))
    print(String(format: "%.6f", negativeRatio))
    print(String(format: "%.6f", zeroRatio))
    
}


//https://www.hackerrank.com/challenges/three-month-preparation-kit-mini-max-sum/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one&h_r=next-challenge&h_v=zen
//Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers
public func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    let min = arr.sorted()[0..<arr.count - 1].reduce(0){$0 + $1},
        max = arr.sorted().reversed()[0..<arr.count - 1].reduce(0){$0 + $1}
    
    print("\(min) \(max)")

}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-time-conversion/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one
//Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.
public func timeConversion(s: String) -> String {
    // Get the pieces of the string
    let splitString = s.components(separatedBy: ":")
    let isAM = splitString[2].filter{!"0123456789M".contains($0)}.contains("A")
    var hours = Int(splitString[0]) ?? 0
    hours = hours == 12 ?
        isAM ? 0 : hours :
        isAM ? hours : hours + 12
    let hoursString = hours < 10 ? "0\(hours)" : "\(hours)"
    let min = splitString[1]
    let seconds = splitString[2].filter("0123456789.".contains)
    
    
    return "\(hoursString):\(min):\(seconds)"
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-breaking-best-and-worst-records/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one&h_r=next-challenge&h_v=zen
//Given the scores for a season, determine the number of times Maria breaks her records for most and least points scored during the season.
public func breakingRecords(scores: [Int]) -> [Int] {
    var min = 0
    var max = 0
    
    var minRecord = scores[0]
    var maxRecord = scores[0]
    
    for score in scores[1...] {
        if score < minRecord{
            min += 1
            minRecord = score
        }
        else if score > maxRecord{
            max += 1
            maxRecord = score
        }
    }
    return [max, min]
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-camel-case/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one
//Your task is to write a program that creates or splits Camel Case variable, method, and class names.
public func formatString(text: String)->String{
    //Split the input string up to get instructions and string to mutate
    let splitString = text.components(separatedBy: ";")
    //Get individual words to mutate from the split string
    var formattedString:String = ""
    //Apply necessary changes to the string
    if splitString[0] == "S"{
        let strings:[String] = splitString[2]
            .filter{!"()".contains($0)}
            .splitBefore(separator: {$0.isUppercase})
            .map{String($0)}
        strings.forEach { string in
            formattedString.append("\(string) ".lowercased())
        }
    }
    else {
        let strings:[String] = splitString[2]
            .filter{!"()".contains($0)}
            .components(separatedBy: " ")
        formattedString = splitString[1] == "C" ? strings[0].capitalized : strings[0].lowercased()
        strings[1...].forEach{formattedString.append($0.capitalized)}
        if splitString[1] == "M"{ formattedString.append("()")}
    }
    return formattedString.trimmingCharacters(in: .whitespacesAndNewlines)
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-divisible-sum-pairs/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one&h_r=next-challenge&h_v=zen
public func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairs = 0
    for i in 0..<ar.count{
        let index = 1 + i
        ar[index...].forEach { number in
            if (ar[i] + number) % k == 0{
                pairs+=1
            }
        }
    }
    
    return pairs
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-sparse-arrays/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one
// For each query string, determine how many times it occurs in the list of input strings. Return an array of the results.
public func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var matches:[Int] = []
    for query in queries {
        matches.append(strings.filter{$0 == query}.count)
    }
    return matches
}

//Week 1 Test
public func findMedian(arr: [Int]) -> Int {
    print(arr.count / 2)
    return arr.sorted()[arr.count / 2]

}
