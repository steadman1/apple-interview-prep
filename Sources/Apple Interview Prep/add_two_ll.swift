/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class AddTwoLL {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let head: ListNode = ListNode(0)
        var current: ListNode? = head
        var current1 = l1
        var current2 = l2
        var carry = 0

        while current1 != nil || current2 != nil || carry > 0 {
            let sum: Int = (current1?.val ?? 0) + (current2?.val ?? 0) + carry
            carry = sum >= 10 ? 1 : 0

            current?.next = ListNode(sum % 10)

            current = current?.next
            current1 = current1?.next
            current2 = current2?.next
        }

        return head.next
    }
}