//: [Previous](@previous)

import Foundation
/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

  

 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4
 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    // O(log n)
    
    var l = 0
    var r = nums.count - 1
    
    while l <= r {
        let mid = (r + l) / 2
        
        if target == nums[mid] {
            return mid
        }
        
        if target > nums[mid] {
            l = mid + 1
        } else {
            r = mid - 1
        }
        nums.contains(target)
        nums.first
    }
    
    return l 
    
    
    // O(n)
    
    /*
    var k = 0
    
    for index in 0..<nums.count {
        if nums[index] < target {
            k += 1
        }
    }
    return k
    */
}

searchInsert([1,3,5,6], 7)
var nums = [1,3,5,6]
nums.first
