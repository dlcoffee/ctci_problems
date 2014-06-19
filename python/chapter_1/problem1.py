import sys


def unique_chars(string):
    """
    returns True if input string has all unique characters. returns False 
    if it does not 
    """

    # empty list to be filled with used characters
    unique = []

    for char in string:
        if char not in unique:
            unique.append(char)
        else:
            return False

    return True



def unique_chars_no_data_structures(string):
    """ 
    returns True if input string has all unique characters. returns False
    if it does not 
    """

    return False



string = input("p1) enter a string: ")

print(unique_chars(string))
print(unique_chars_no_data_structures(string))
