class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        
        let digits = x.digits()
        let reversed = Array(digits.reversed())
        
        return digits == reversed
    }
}

extension Int {
    func digits() -> [Int] {
        var digits: [Int] = []
        var num = self
        repeat {
            digits.append(num % 10)
            num /= 10
        } while num != 0
        return digits.reversed()
    }
}