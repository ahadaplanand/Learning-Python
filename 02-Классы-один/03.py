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