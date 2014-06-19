import pprint


def zeroify(matrix):
    """
    if an element in an MxN matrix is 0, its entire row and column
    are set to 0
    """

    done = False

    # scan through and look for zeros
    for row in range(len(matrix)):
        for col in range(len(matrix[row])):
            if matrix[row][col] == 0 and done == False:
                #print("row = {}, col = {}".format(row, col))

                # zero out the row
                matrix[row] = [0] * len(matrix[row])

                # zero out the column by going down rows
                for zrow in range(len(matrix)):
                    matrix[zrow][col] = 0

                done = True


    return matrix



matrix = [[x+1 for x in range(5)] for x in range(8)]
matrix[2][3] = 0


print("before: ")
pprint.pprint(matrix)

print("after: ")

pprint.pprint(zeroify(matrix))




