# Написать два класса. 
# Один класс - Car, содержит название и скорость машины. 
# Второй класс - гонка (Race), в котором есть метод play: этот метод принимает список 
# машин - объектов класса Car, а также количество кругов в гонке. 
# На каждом круге происходит случайная авария с кем-то из гонщиков. 
# Гонщик, попавший в аварию первый, считается прибывшим на финиш последним, 
# второй - последним с конца и т.д. 
# Метод play возвращает список машин в том порядке, в котором они финишируют

class Machine:
    def __init__(self, name, speed):
        self.name = name
        self.speed = speed

class Race:
    def __init__(self, location, circle_length):
        self.location = location
        self.circle_length = circle_length

    def play(self, list_of_cars):

def make_list_of_cars():
    