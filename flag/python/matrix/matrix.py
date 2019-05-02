class Matrix(object):
    def __init__(self, matrix_string):
        rows = matrix_string.split('\n')
        self.matrix = [map(int, row.split(" ")) for row in rows]

    def row(self, index):
        return self.matrix[index-1]

    def column(self, index):
        return [x[index-1] for x in self.matrix]
