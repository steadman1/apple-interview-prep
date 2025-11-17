public class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    public var description: String {
        var current: ListNode? = self
        var result = "["
        while current != nil {
            result += "\(current!.val)"
            if current!.next != nil {
                result += ", "
            }
            current = current!.next
        }
        return result + "]"
    }
}

class ReverseLL {
    static func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head else { return nil }
        if head.next == nil { return head }

        let new_head = reverseList(head.next)
        
        head.next!.next = head
        head.next = nil

        return new_head
    }
}