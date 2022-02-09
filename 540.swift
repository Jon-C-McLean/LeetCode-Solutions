class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var uniqueNums: [Int] = []
        var numIndex: [Int: Int] = [:]
        
        for (index,num) in nums.enumerated() {
            if numIndex[num] == nil {
                uniqueNums.append(num)
            }else {
                uniqueNums.removeAll { $0 == num }
            }
            
            numIndex[num] = index
        }
        
        return uniqueNums.first!
    }
}