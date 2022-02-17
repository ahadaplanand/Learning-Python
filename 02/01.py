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


# ------------------------------------------------------------------------------


class Car:
    steeering_wheel = True
    def __init__(self, color, engine, wheels):
        self.color = color
        self.engine = engine
        self.wheel = wheels

    def drive(self, speed, a, b, list_of_load):
        time = (a.place - b.place) / speed
        for item in list_of_load:
            item.place = b
        return time
        # все это работать не будет, но что-то в этом есть


car1 = Car('red', 'v8', 6)
print(car1.color) # выведет "red"

class Ferrari(Car):
    def __init__(self, color, engine, wheels):
        if not (engine == 'v8' or engine == 'v12'):
            print('Error')
            raise Exception
        else:
            super().__init__(color, engine, wheels)
            self.manfcr = 'Ferrari'

car2 = Ferrari('red', 'v8', 8)
print(car2.manfcr) # выведет "Ferrari"


# ------------------------------------------------------------------------------


class Person:
    def __init__(self, age, name, country):
        self.age = age
        self.name = name
        self.country = country

    def say(self):
        print(f'My name is {self.name}. I`m {self.age} and I`m from {self.country}')

person1 = Person(18, 'John', 'USA')
print(person1.age) # выведет "18"

class Student(Person):
    def __init__(self, age, name, country, study):
        super().__init__(age, name, country)
        self.study = study

    def say(self):
        super().say()
        print(f'I am learning in {self.study}')

person2 = Student(20, 'Arnold', 'UK', 'Cambridge')
person2.say()


# ------------------------------------------------------------------------------


class A:
    def shout(self):
        print('What`s your name?')
    
    def say(self):
        print('I`m obj A')

class B:
    def yell(self):
        print('Ezekiel')

    def say(self):
        print('I`m obj A')

class C(A, B):
    pass

obj1 = C()
obj1.shout()
obj1.yell()
obj1.say() # выведет say() из класса A, т.к. при наследовании A записано перед B


# ------------------------------------------------------------------------------


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