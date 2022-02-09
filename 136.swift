class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums.first! }
        
        var unique: [Int] = []
        var dict: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            if let _ = dict[num] {
                unique.removeAll { $0 == num }
            }else {
                unique.append(num)
            }
            
            dict[num] = 1
        }
        
        return unique.first!
    }
}