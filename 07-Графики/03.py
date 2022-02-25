import matplotlib.pyplot as pt

def graph_one(colors, *args):
    coun = 0
    for i in args:
        pt.plot(i[0], i[1], colors[coun])
        coun += 1
    pt.show()

def graph_two():
    coun = int(input('Введите количество графиков: '))
    for i in range(1, coun + 1):
        x = input(f'Введите значения x для графика {i} (через пробел): ').split()
        y = input(f'Введите значения y для графика {i} (через пробел): ').split()
        color = input(f'Цвет для графика {i} (green, red, blue etc.): ')
        pt.plot(x, y, color)
    pt.show()

def graph_three(x, y, colors, title = '', xlabel = '', ylabel = ''):
    if title:
        pt.title(title)
    if xlabel:
        pt.xlabel(xlabel)
    if ylabel:
        pt.ylabel(ylabel)
    bars = pt.bar(x, y)
    i = 0
    while i < len(colors) and i < len(bars):
        bars[i].set_color(colors[i])
        i += 1
    pt.show()

# graph_one(['red', 'green', 'blue'], ([1, 2, 3, 4], [2, 3, 1, 2]), \
#     ([1, 2, 3, 4], [1, 1, 2, 1]), ([1, 2, 3, 4], [3, 2, 3, 4]))

# graph_two()

graph_three(['Jhon', 'Andrew', 'Greg'], [4, 3, 5], ['red', 'green', 'blue'], \
    'People', 'Name', 'Count')