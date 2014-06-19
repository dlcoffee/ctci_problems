import sys

def replace_spaces(string):
    """
    replaces all spaces in the string with "%20" (except for spaces after
    the string)
    """

    # removes all leading and trailing whitespace
    string = string.strip()
    
    return string.replace(" ", "%20")


string = input("p4) enter a string: ")

print(replace_spaces(string))
