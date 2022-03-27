def female(n):
    if n < 0:
        return -1
    else:
        var = 0
        if n == 0:
            var = 1
        else:
            var = n - male(female(n - 1))
        return var

def male(n):
    if n < 0:
        return -1
    else:
        var = 0
        if n == 0:
            var == 0
        else:
            var = n - female(male(n - 1))
        return var

print(female(7))
print(male(7))