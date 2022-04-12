# Написать два класса. 
# Один класс - Car, содержит название и скорость машины. 
# Второй класс - гонка (Race), в котором есть метод play: этот метод принимает список 
# машин - объектов класса Car, а также количество кругов в гонке. 
# На каждом круге происходит случайная авария с кем-то из гонщиков. 
# Гонщик, попавший в аварию первый, считается прибывшим на финиш последним, 
# второй - последним с конца и т.д. 
# Метод play возвращает список машин в том порядке, в котором они финишируют

from random import choice

class Machine:
    def __init__(self, driver, speed):
        self.driver = driver
        self.speed = speed

class Race:
    def __init__(self, location):
        self.location = location

    def play(self, list_of_cars, num_of_circles):
        positioned_list = []
        for i in range(num_of_circles):
            ii = choice(list_of_cars)
            positioned_list.insert(0, ii)
            list_of_cars.remove(ii)
        for i in range(len(list_of_cars)):
            min_speed = 1000
            for ii in list_of_cars:
                if ii.speed < min_speed:
                    min_speed = ii.speed
                    min_speed_car = ii
            positioned_list.insert(0, min_speed_car)
            list_of_cars.remove(min_speed_car)
        return positioned_list

    def presentation(self, positioned_list):
        full_str = f'The race that took place today in the {self.location} has ended.\n' \
            f'The winner of the race was {positioned_list[0].driver}.\n' \
            f'Second place - {positioned_list[1].driver}. Third - {positioned_list[2].driver}.\n' \
            f'Then 4 - {positioned_list[3].driver}, 5 - {positioned_list[4].driver}, ' \
            f'6 - {positioned_list[5].driver},\n7 - {positioned_list[6].driver}' \
            f'8 - {positioned_list[7].driver}, 9 - {positioned_list[8].driver} ' \
            f'and 10 - {positioned_list[9].driver}'
        return full_str
        

list_cars = []
d001 = Machine('King Artur', 85); list_cars.append(d001)
d007 = Machine('Thomas Sh', 80); list_cars.append(d007)
d010 = Machine('Maximilian', 55); list_cars.append(d010)
d111 = Machine('NaGiBaToR937497533', 60); list_cars.append(d111)
d140 = Machine('Greg №2', 95); list_cars.append(d140)
d228 = Machine('Suiiiiiii', 90); list_cars.append(d228)
d300 = Machine('Trevor', 88); list_cars.append(d300)
d404 = Machine('Winner', 63); list_cars.append(d404)
d777 = Machine('Redneck', 93); list_cars.append(d777)
d899 = Machine('Lionel Kissy', 70); list_cars.append(d899)

race_one = Race('Gold Coast')

pos_list = race_one.play(list_cars, 5)
print(race_one.presentation(pos_list))