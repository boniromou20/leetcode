//true

/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
var addTwoNumbers = function(l1, l2) {
    let head = new ListNode();
    let tail = head;
    let carry = 0;
    
    while (l1 || l2 || carry) {
        const sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry;
        
        tail.next = new ListNode(sum % 10);
        tail = tail.next;
        
        carry = Math.trunc(sum / 10);
        
        l1 = l1 && l1.next;
        l2 = l2 && l2.next;
    }
    return head.next;
};