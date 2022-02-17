class Bakery:
    milk = 0,5 # для всех элементов
    def __init__(self, eggs, flour):
        self.eggs = eggs # задаем значения параметрам
        self.flour = flour

class Cookie1(Bakery):
    pass # не изменять методы

class Cookie2(Bakery):
    def __init__(self, eggs, flour, cinnamon):
        super().__init__(self, eggs, flour) # обращение к родительскому классу
        self.cinnamon = cinnamon
    def __del__(self):
        super().__del__()
        print('msg')