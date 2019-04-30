

def score(dice, category):
    return category(dice)

def yacht(dice):
    if len(set(dice)) == 1:
        return 50
    return 0

def numberCategory(num):
    def grabDice(dice):
        return num * dice.count(num)
    return grabDice

def straightCategory(ty):
    def grabDice(dice):
        dice = sorted(dice)
        if(dice==[1,2,3,4,5] and ty==1) or (dice==[2,3,4,5,6] and ty==2):
            return 30
        return 0
    return grabDice


def full_house(dice):
    dice = sorted(dice)
    if len(set(dice)) == 2 and dice.count(dice[1]) !=4:
        return sum(dice)
    return 0

def four_of_a_kind(dice):
    dice = sorted(dice)
    if len(set(dice))<=2 and dice.count(dice[1]) >=4:
        return dice[1] * 4
    return 0

# Score categories
# Change the values as you see fit
YACHT = yacht
ONES = numberCategory(1)
TWOS = numberCategory(2)
THREES = numberCategory(3)
FOURS = numberCategory(4)
FIVES = numberCategory(5)
SIXES = numberCategory(6)
FULL_HOUSE = full_house
FOUR_OF_A_KIND = four_of_a_kind
LITTLE_STRAIGHT = straightCategory(1)
BIG_STRAIGHT = straightCategory(2)
CHOICE = sum