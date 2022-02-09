class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        var index: Int = 0
        
        for num in nums {
            if num != nums[index] {
                index+=1
                nums[index] = num
            }
        }
        
        return index+1
    }
}