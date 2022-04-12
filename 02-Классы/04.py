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