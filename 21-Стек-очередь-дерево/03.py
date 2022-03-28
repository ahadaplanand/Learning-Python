class Tree_node:
    def __init__(self, value, links=[]):
        self.value, self.links = value, links

    def add(self, node):
        self.links.append(node)

    @classmethod
    def print_depth(cls, node):
        print(node.value)
        for child in node.links:
            cls.print_depth(child)

    @classmethod
    def print_breadth(cls, head):
        visited = []
        def bfs(head, visited, queue):
            visited.append(head)
            queue.append(head)
            while queue:
                next = queue.pop(0)
                for node in next.nodes:
                    if node not in visited:
                        visited.append(node)
                        queue.append(node)
        bfs(head, visited, queue=[])
        [print(node.value) for node in visited]

# nodes = [Tree_node(i) for i in range(9)]
# for link in [nodes[1], nodes[2]]:
#     nodes[0].add(link)
# for link in [nodes[3], nodes[4]]:
#     nodes[1].add(link)
# for link in [nodes[5], nodes[6]]:
#     nodes[2].add(link)
# for link in [nodes[7], nodes[8]]:
#     nodes[3].add(link)

# Tree_node.print_depth(nodes[0])

head = Tree_node(1, \
    [Tree_node(i, [Tree_node(j * i) for j in range(5, 8)]) for i in range (2, 5)])