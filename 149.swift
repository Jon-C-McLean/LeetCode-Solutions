// Problem: Max Points on a line

// Solution Plan:
// 1. Determine all possible straight lines (i.e. >= 2 points that form a straight line)
//    a. Line is straight if all segments have the same gradient (m = [y_1 - y_0]/[x_1 - x_0])
// 2. Count lines, if greater than max then change max value
// 3. Iterate until no more straight line combinations (store existing iterations)

// Current Testcase 24/35

class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        
        var maxPoints: Int = 0

        for (i, point) in points.enumerated() {
            var chain: [[Int]] = [point]
            var lastChainIndex: Int = 0
            var gradient: Float?
            

            for (j, chainPoint) in points.enumerated() where i != j && !chain.contains(chainPoint) {
                var previousPoint = chain[lastChainIndex]

                let horiz = Float(chainPoint[0] - previousPoint[0])
                let vert = Float(chainPoint[1] - previousPoint[1])

                let localGradient: Float

                if(horiz == 0 || vert == 0) {
                    localGradient = 0
                }else {
                    localGradient = vert / horiz
                }
                
                print("Local Gradient \(localGradient)")
                
                if localGradient != gradient && gradient != nil {
                    continue
                }else {
                    gradient = localGradient
                    chain.append(chainPoint)
                    lastChainIndex += 1
                }
            }

            if chain.count > maxPoints {
                maxPoints = chain.count
            }
        }

        return maxPoints
    }
}

// let a: [[Int]] = [[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]

// let solution = Solution()
// print(solution.maxPoints(a))