import matplotlib.pyplot as pt

pt.pie([5, 3, 2], colors=['red', 'green', 'blue'], startangle=90, autopct='%1.2f%%')
pt.title('Graph')
pt.legend(['First', 'Second', 'Third'])
pt.show()