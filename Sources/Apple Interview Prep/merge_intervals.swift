class Merge {
    static func merge(_ intervals: [[Int]]) -> [[Int]] {
        if intervals.isEmpty { return [] }
        
        var result: [[Int]] = []

        // sort intervals by first index
        let sorted = intervals.sorted { $0[0] < $1[0] }

        result.append(sorted[0])

        // loop over once for O(n)
        for (index, curr) in sorted.enumerated() {
            if index == 0 { continue }

            let lastMerged = result.last!
            
            if curr[0] <= lastMerged[1] {
                let newEnd = max(lastMerged[1], curr[1])
                result[result.count - 1][1] = newEnd
            } else {
                result.append(curr)
            }
        }

        return result
    }
}