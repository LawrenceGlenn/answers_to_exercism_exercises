import string
translation_table = string.maketrans('GCTA','CGAU')
def to_rna(dna_strand):
    if isinstance(dna_strand, str):
      return string.translate(dna_strand,translation_table)
    else:
      raise TypeError('Invalid Input, must be string')