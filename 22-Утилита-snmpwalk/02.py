class Tree_node:
    def __init__(self, value, nodes = []):
        self.value , self.nodes = value, nodes
    
    def add_node(self, node):
        self.nodes.append(node)

    def remove_node(self, node):
        self.nodes.remove(node)

    @classmethod
    def print_tree_depth(cls, head, file):
        file.write(head.value + '\n')
        for node in head.nodes:
            cls.print_tree_depth(node, file)

nums = ['1.1.2', '1.1.1', '1.2.1', '1.2.2', '1.2.3', '1.3']
ids = []

for num in nums:
    split_num = num.split('.')
    acc = '' # аккумулятуре значений

    for i in range(len(split_num) - 1):
        parent = split_num[i]
        child = split_num[i + 1]
        to_add = (acc + parent, acc + parent + '.' + child)

        if not to_add in ids:
            ids.append(to_add)
        acc += parent + '.'

def make_node(ids, parent_value):
    children = []

    for parent, child in ids:
        if parent == parent_value:
            children.append(child)
    children_nodes = [make_node(ids, child) for child in children]

    return Tree_node(parent_value, children_nodes) 

file = open('22-Утилита-snmpwalk/jdsndsjdf.txt', 'w')
Tree_node.print_tree_depth(make_node(ids, '1'), file)
file.close()