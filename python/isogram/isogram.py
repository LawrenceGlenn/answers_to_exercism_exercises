import re
def is_isogram(string):
  if isinstance(string, str):
    string = re.sub(r"[\s-]+", "", string.lower())
    print string
    return len(string) == len(set(string))
  else:
    raise TypeError('Input should be a string')