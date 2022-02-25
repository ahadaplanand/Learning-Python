class Person:
    def __init__(self, age, name, country):
        self.age = age
        self.name = name
        self.country = country

    def say(self):
        print(f'My name is {self.name}. I`m {self.age} and I`m from {self.country}')

class Student(Person):
    def __init__(self, age, name, country, study, num_parent):
        super().__init__(age, name, country)
        self.study = study
        self.__num_parent = num_parent

    def say(self):
        super().say()
        print(f'I am learning in {self.study}')

    def get_num_parent(self):
        return self.__num_parent

    def set_num_parent(self, number):
        self.__num_parent = number

person = Student(20, 'Arnold', 'UK', 'Cambridge', '88004566556')
person.say()
print(person.get_num_parent())
person.set_num_parent('+79409876543')
print(person.get_num_parent())