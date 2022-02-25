from string import digits


class Phone:
    @staticmethod
    def country(number):
        return number[1:-14]
    @staticmethod
    def check_number(number):
        stroka = ''.join(number[1:].split('-'))
        q1 = stroka.isdigit()
        q2 = number[0] == '+'
        q3 = (number[-3] + number[-6] + number[-10] + number[-14]) == ('-' * 4)
        return q1 and q2 and q3
b = Phone
print(b.country('+232325-432-432-34-43'))
print(b.check_number('+232325-432-432-34-43'))
print(b.check_number('+232#325-432-432-34-43'))