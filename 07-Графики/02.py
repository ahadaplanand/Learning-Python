import matplotlib.pyplot as pt
import random

pt.xlabel('икс')
pt.ylabel('игрек')
x = [0, 1, 2, 3]
y = [1, 2, 1, 2]
bars = pt.bar(x, y)
for bar in bars:
    bar.set_color(random.choice(['r', 'g', 'b']))
pt.title('График 2')
pt.grid(True)
pt.show()