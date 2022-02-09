class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let splittable = s.removeExtraSpaces()
        let split = splittable.split { $0.isWhitespace }
        
        return split.last!.count
    }
}

extension String {

    func removeExtraSpaces() -> String {
        return self.replacingOccurrences(of: "[\\s\n]+", with: " ", options: .regularExpression, range: nil)
    }

}