class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var counter = 0
        
        var xor = x ^ y
        
        while xor > 0 {
            xor = xor & (xor-1)
            counter += 1
        }
        
        return counter
    }
}