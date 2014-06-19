import sys

def compress(string):
    """
    compresses the string by using counts of repeated characters.
    input example: aabcccccaaa
    output :       a2b1c5a3
    """
    
    # remove unnecessary whitespace
    string = string.replace(" ", "")

    builder = ""
    current_char = string[0]

    count = 0
    builder = current_char
    for char in string:
        if char == current_char:
            count += 1
        else:
            builder += str(count)
            builder += char
            count = 1
            current_char = char
    
    # this adds the value of count of whatever the last character was
    builder += str(count)

    # if compressing it is actually longer, then just return the string
    if len(builder) > len(string):
        return string
    else:
        return builder


string = input("p5) enter a string: ")

print(compress(string))
