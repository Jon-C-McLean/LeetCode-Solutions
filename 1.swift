class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var output: [Int] = []
        for (i,num) in nums.enumerated() {
            for (j,secondNum) in nums.enumerated() where j != i {
                if (num + secondNum) == target {
                    output.append(i)
                    output.append(j)
                    return output
                }
            }
        }
        
        return [Int]()
    }
}