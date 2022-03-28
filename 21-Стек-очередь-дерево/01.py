class Stack:
    def __init__(self):
        self.stack = []

    def add(self, item):
        self.stack.append(item)

    def remove(self):
        return self.stack.pop()

class Queue:
    def __init__(self):
        self.queue = []

    def add(self, item):
        self.queue.append(item)

    def remove(self):
        return self.queue.pop(0)

class Deck:
    def __init__(self):
        self.deck = []

    def add(self, item, end=True):
        if end:
            self.deck.append(item)
        else:
            self.deck.insert(0, item)

    def remove(self, end=True):
        return self.deck.pop() if end else self.deck.pop(0)