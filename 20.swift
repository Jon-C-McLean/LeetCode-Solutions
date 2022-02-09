class Solution {
    func isValid(_ s: String) -> Bool {
        var patternStack: [Character] = []
        
        for c in s {
            switch(c) {
                case "(": patternStack.append(")")
                case "[": patternStack.append("]")
                case "{": patternStack.append("}")
                default:
                    if patternStack.count == 0 || patternStack.removeLast() != c { return false }
            }
        }
        
        return patternStack.count == 0
    }
}