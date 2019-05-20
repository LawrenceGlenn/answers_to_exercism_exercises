import math

def is_armstrong_number(number):
    ex = number_of_digits(number)
    val = 0
    for i in str(number):
        val = val + int(i)**ex
    print(number)
    print(ex)
    print(val)
    return val == number

def number_of_digits(number):
    if number <= 999999999999997 and number != 0:
        return int(math.log10(number)) + 1
    elif number == 0:
        return 1;
    else:
        counter = 15;
        while number >= 10**counter:
            counter += 1
        return counter