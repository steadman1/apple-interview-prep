extension String {
    var alphaNumeric: String {
        self.filter { $0.isLetter || $0.isNumber }
    }
}

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars: [Character] = Array(s.lowercased().alphaNumeric)

        let count = chars.count
        if count == 0 { return true }

        for index in 0..<(count / 2) {
            if chars[index] != chars[chars.count - index - 1] { return false }
        }

        return true
    }
}
