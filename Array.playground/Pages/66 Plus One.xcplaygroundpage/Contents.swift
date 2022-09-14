//: [Previous](@previous)

import Foundation

/*
 
 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

 Increment the large integer by one and return the resulting array of digits.

  

 Example 1:

 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].
 
 Input: digits = [9]
 Output: [1,0]
 Explanation: The array represents the integer 9.
 Incrementing by one gives 9 + 1 = 10.
 Thus, the result should be [1,0].
 */

func plusOne(_ digits: [Int]) -> [Int] {
    /*
     var ans = 0
    var arr = [Int]()
    ans = digits.reduce(0, {$0*10 + $1})
    
    ans += 1
    
    return String(ans).compactMap { Int(String($0)) }
    */
    
    var result = digits
    
    for i in (0..<result.count).reversed() {
        if result[i] != 9 {
            result[i] = result[i] + 1
            return result
        } else {
            result [i] = 0
        }
        if result.first == 0 {
            result.insert(1, at: 0)
            
        }
    }
    
    return result
}

plusOne([1,2,3])


