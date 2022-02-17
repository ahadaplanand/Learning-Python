# Написать функцию, которая принимает список аргументов, выравнивание ("center" or "left" or "right"), 
# кол-во символов N, которое занимает каждый аргумент в своей строке, символ заполнения. 
# Генерируем текст, где каждая строка из (длина списка аргументов) выделена под один аргумент и 
# занимает N символов с выравниваением и заполнением (используем format)

def main(data, str_length, align='center', filling='*'):

    if align == 'center':
        str1 = '{0:%c^%ds}' %(filling, str_length)
    elif align == 'left':
        str1 = '{0:%c<%ds}' %(filling, str_length)
    elif align == 'right':
        str1 = '{0:%c>%ds}' %(filling, str_length)

    full_str = ''
    
    for i in data:
        str2 = str1.format(str(i))
        full_str += str2 + '\n'
    full_str = full_str[:-1]

    print(full_str)

main([1, 51, 372, 44, 5497829], 10)
print('--------------------------')
main(['study', 'lol', 'program'], 8, 'right', '#')
print('--------------------------')
main(['qwerty', 34, 'python', 77, 'github'], 15, 'left', '^')




