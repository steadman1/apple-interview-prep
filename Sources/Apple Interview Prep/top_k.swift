class TopK {
    static func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var occurences: [Int: Int] = [:]

        for num in nums {
            occurences[num] = (occurences[num] ?? 0) + 1
        }
        
        // sort in descending order
        let sortedKeys = occurences.sorted { $0.value > $1.value }

        // get first k (key, value)
        // then map to keys array
        return sortedKeys.prefix(k).map { $0.key }
    }
}