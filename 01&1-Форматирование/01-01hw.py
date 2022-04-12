# Написать функцию, которая принимает список аргументов, выравнивание 
# ("center" or "left" or "right"), кол-во символов N, которое занимает каждый 
# аргумент в своей строке, символ заполнения. 
# Генерируем текст, где каждая строка из (длина списка аргументов) выделена под 
# один аргумент и занимает N символов с выравниваением и заполнением (используем format)

def main(data, str_length, align='center', filling='*'):
    if align == 'center':
        s_align = '^'
    elif align == 'left':
        s_align = '<'
    elif align == 'right':
        s_align = '>'

    full_str = ''
    for i in data:
        full_str += '{0:{1}{2}{3}s}'.format(str(i), filling, s_align, str_length) + '\n'
    full_str = full_str[:-1]

    return full_str


print(main([1, 51, 372, 44, 5497829], 10))
print('--------------------------')
print(main(['study', 'lol', 'program'], 8, 'right', '#'))
print('--------------------------')
print(main(['qwerty', 34, 'python', 77, 'github'], 15, 'left', '^'))