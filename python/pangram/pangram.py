import re
def is_pangram(sentence):
  if isinstance(sentence, str):
    sentence = re.sub(r"[^a-zA-Z]+", "", sentence.lower())
    return 26 == len(set(sentence))
  else:
    raise TypeError('Input should be a string')