import matplotlib.pyplot as pt

def draw_pie(*args):
    segment, label, color = [], [], []
    for i in args:
        segment.append(i[0])
        label.append(i[1])
        color.append(i[2])
    pt.pie(segment, colors=color, startangle=90, autopct='%1.2f%%')
    pt.legend(label, loc='best')
    pt.show()

draw_pie([15, 'Margareth', 'green'], [23, 'Andres', 'yellow'], \
    [31, 'Marianna', 'pink'], [29, 'Max', 'orange'])