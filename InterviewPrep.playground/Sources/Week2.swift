import Foundation

//https://www.hackerrank.com/challenges/three-month-preparation-kit-lonely-integer/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two
//Given an array of integers, where all elements but one occur twice, find the unique element.
func lonelyinteger(a: [Int]) -> Int {
    for num in a {
        if a.filter({$0 == num}).count == 1{return num}
    }
    return 0
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-grading/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two&h_r=next-challenge&h_v=zen
//Given the initial value of Grade  for each of Sam's n students, write code to automate the rounding process.
func gradingStudents(grades: [Int]) -> [Int] {
    var roundedGrades = [Int]()
    
    for grade in grades{
        if grade < 38{roundedGrades.append(grade)}
        else{
            let remainder = grade % 10 < 5 ? grade % 10 : grade % 5
            roundedGrades.append(remainder > 2 ? grade + 5 - remainder : grade)
        }
    }
    return roundedGrades
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-flipping-bits/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two
//You will be given a list of 32 bit unsigned integers. Flip all the bits ( and ) and return the result as an unsigned integer.
func flippingBits(n: Int) -> Int {
    let maxNum = 4294967295
    return n ^ maxNum
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two
//Given the sequence of up and down steps during a hike, find and print the number of valleys walked through.
func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var valleys = 0
    var elevation = 0
    for step in path{
        if elevation == -1, step == "U"{
            valleys += 1
        }
        elevation += step == "D" ? -1 : 1
        
    }
    return valleys
}

//https://www.hackerrank.com/challenges/three-month-preparation-kit-pangrams/problem?h_l=interview&playlist_slugs%5B%5D=preparation-kits&playlist_slugs%5B%5D=three-month-preparation-kit&playlist_slugs%5B%5D=three-month-week-two
//Complete the function pangrams in the editor below. It should return the string pangram if the input string is a pangram. Otherwise, it should return not pangram.
func pangrams(s: String) -> String {
    // Write your code here
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    for letter in alphabet{
        if !s.lowercased().contains(letter.lowercased()){return "not pangram"}
    }
    return "pangram"
}
