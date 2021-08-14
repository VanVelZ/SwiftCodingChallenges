import Foundation
//https://www.hackerrank.com/challenges/three-month-preparation-kit-diagonal-difference/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two&h_r=next-challenge&h_v=zen
//Given a square matrix, calculate the absolute difference between the sums of its diagonals.
//func diagonalDifference(arr: [[Int]]) -> Int {
//    var firstSum = 0, secondSum = 0
//    for i in 0..<arr.count{
//        for j in 0..<arr[i].count{
//            if i == j {
//                firstSum += arr[i][j]
//            }
//            else if j + i == arr.count - 1{
//                print(arr[i][j])
//                secondSum += arr[i][j]
//            }
//        }
//    }
//    return abs(firstSum - secondSum)
//}
//let test = [[0, 1, 2],
//            [2, 3, 4],
//            [3, 5, 7]]
//diagonalDifference(arr: test)



countingValleys(steps: 1, path: "DUDUD")
