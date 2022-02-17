# __eq__ ==
# __ne__ !=
# __lt__ <
# __gt__ >
# __le__ <=
# __ge__ >=
# __add__ +
# __sub__ -
# __mul__  *

class Dot:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y

    # ...