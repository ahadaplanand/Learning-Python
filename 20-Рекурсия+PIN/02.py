neigh = [(0, 8), (1, 2, 4), (1, 2, 3, 5), (2, 3, 6), (1, 4, 5, 7), (2, 4, 5, 6, 8), \
    (3, 5, 6, 9), (4, 7, 8), (5, 7, 8, 9, 0), (6, 8, 9)]

def main(pin):
    nums = []
    for i1 in neigh[pin[0]]:
        for i2 in neigh[pin[1]]:
            for i3 in neigh[pin[2]]:
                for i4 in neigh[pin[3]]:
                    nums.append(str(i1) + str(i2) + str(i3) + str(i4))
    return nums

print(len(main((4, 0, 3, 7))))