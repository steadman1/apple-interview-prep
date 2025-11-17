class TwoSum {
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var num_map: [Int: Int] = [:] // [value : index]
        
        for (index, num) in nums.enumerated() {
            let map_target: Int = target - num

            if let map_index = num_map[map_target] { 
                return [map_index, index]
            }

            num_map[num] = index
        }

        return []
    }
}