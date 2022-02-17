class Washing:
    def __init__(self, water):
        self.water = water

    def wash(self, item):
        print(f'I`m washing {item} with {self.water} litres')

class Driving:
    def drive(self, a, b):
        print(f'I am driving from {a} to {b}')

class Machine:
    def __init__(self, brand, price, year, color):
        self.brand = brand
        self.price = price
        self.year = year
        self.color = color

class Washing_Machine(Machine, Washing):
    def __init__(self, brand, price, year, color, water):
        super().__init__(brand, price, year, color)
        self.water = water

class Driving_Machine(Machine, Driving):
    pass

machine1 = Washing_Machine('Phillips', 20000, 2015, 'white', 15)
machine1.wash('clothes')

machine2 = Driving_Machine('Nissan', 1000000, 2010, 'yellow')
machine2.drive('LA', 'Philadelphia')