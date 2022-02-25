class Reader:
    __books = []
    def __init__(self, name):
        self.name = name

    def take(self, n_book):    
        if (len(self.books)) <= 2:
            self.books.append(n_book)
        else:
            print('You can take only 3 books!')

    def give(self, n_book):
        if n_book in self.books:
            self.books.remove(n_book)
        else:
            print('You don`t have such a book')

reader1 = Reader('Greg Walker')
reader1.take('Rdsfdgdfd')
reader1.take('Ujdkbkfbd fkdnkfn fddf')
reader1.give('Rdsfdgdfd')
print(reader1.books)