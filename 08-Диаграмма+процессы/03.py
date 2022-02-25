class Queue:
    queue = []
    def push(self, item):
        self.queue.append(item)
    def get(self):
        if self.queue:
            return self.queue.pop(0)
        else:
            return 'error'