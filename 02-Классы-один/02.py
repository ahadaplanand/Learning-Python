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