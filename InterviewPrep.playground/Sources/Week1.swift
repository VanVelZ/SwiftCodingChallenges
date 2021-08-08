import Foundation

//https://www.hackerrank.com/challenges/three-month-preparation-kit-plus-minus/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-one
//Given an array, print the ratio of positive, negative and zero numbers with 6 decimal places
func plusMinus(arr: [Int]) -> Void {
    
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
func miniMaxSum(arr: [Int]) -> Void {
    // Write your code here
    let min = arr.sorted()[0..<arr.count - 1].reduce(0){$0 + $1},
        max = arr.sorted().reversed()[0..<arr.count - 1].reduce(0){$0 + $1}
    
    print("\(min) \(max)")

}



