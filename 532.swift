class Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        var dict: [Int: Int] = [:]
        
        var resultCount = 0
        for num in nums {
            dict[num, default: 0] += 1
        }
        
        for(num, count) in dict {
            if k > 0, let _ = dict[num-k] {
                resultCount += 1
            }else {
                if count > 1 && (num-num) == k {
                    resultCount += 1
                }
            }
        }
        
        return resultCount
    }
}