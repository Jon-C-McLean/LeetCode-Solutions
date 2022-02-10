class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 0 else { return 0 }
        
        var sum = 0
        var count = 0
        var map: [Int: Int] = [:]
        
        for i in 0..<nums.count {
            sum += nums[i]
            
            if sum == k {
                count += 1
            }
            
            if map[sum-k] != nil {
                count += map[sum-k] ?? 0
            }
            
            map[sum, default: 0] += 1
        }
        
        return count
    }
}