import sys


def is_permutation(string1, string2):
    """
    given two strings, this function returns True if one is a permutation
    of the other. returns False otherwise
    """

    # remove unnecessary whitespace
    string1.replace(" ", "")
    string2.replace(" ", "")


    # if we have a permutation, then we should have the same amount and
    # characters in both string, so it shouldn't matter which string
    # we build the dictionary off of
    
    if len(string1) != len(string2):
        return False

    all_letters = dict()

    for letter in string1:

        # if the letter is already in the dict
        if letter in all_letters:
            all_letters[letter] += 1
        else:
            all_letters[letter] = 1

    
    # go through the second string and decrement the count of each letter
    # in the dictionary
    for letter in string2:
        if letter not in all_letters:
            return False
        
        if all_letters[letter] < 1:
            return False

        all_letters[letter] -= 1
    

    return True



string1 = input("enter string one: ")
string2 = input("enter string two: ")


print(is_permutation(string1, string2))
