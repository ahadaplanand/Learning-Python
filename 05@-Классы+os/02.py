class Matrix:
    def __init__(self, matrix):
        self.valid = False
        if len(matrix) == 0:
            print('Error 1')
        else:
            for i in matrix:
                if len(i) != len(matrix[0]):
                    print('Error 2')
                    break
            else:
                 self.matrix = matrix
                 self.valid = True

    def transpose(self):
        if self.valid == False:
            print('Error 3')
        else:
            n_matrix = [[]*len(self.matrix[0])]
            for i in self.matrix:
                cou = 0
                for j in i:
                    n_matrix[cou].append(j)
                    cou += 1
        return n_matrix

matrica = Matrix([[1, 2, 3], [4, 5, 6]])
print(matrica.transpose())