class Linked_Node:
    def __init__(self, value, next=None):
        self.value, self.next = value, next

    def add_next(self, next):
        self.next = next

    @classmethod
    def print_linked(cls, head):
        initial = head
        def rec_print(head):
            print(head.value)
            if head.next and head.next != initial:
                rec_print(head.next)
        rec_print(head)

class Double_Linked_Node(Linked_Node):
    def __init__(self, value, next=None, prev=None):
        self.value, self.next = value, next

    def add_prev(self, prev):
        self.prev = prev

head = Linked_Node(1, Linked_Node(2, Linked_Node(3)))
print(head.next.next.value)
Linked_Node.print_linked(head)

print()

head = Double_Linked_Node(1)
node1 = Double_Linked_Node(2)
node2 = Double_Linked_Node(3)
head.add_next(node1)
node1.add_prev(head)
node1.add_next(node2)
node2.add_prev(node1)
Double_Linked_Node.print_linked(head)