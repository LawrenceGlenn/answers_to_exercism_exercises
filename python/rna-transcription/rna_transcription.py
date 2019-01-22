def to_rna(dna_strand):
    if isinstance(dna_strand, str) and (dna_strand == "A" or dna_strand == "T" or dna_strand == "G" or dna_strand == "C"):
      rna = { 'A':'U', 'T':'A', 'C':'M', 'G':'C', 'M':'G'}
      for i, j in rna.iteritems():
          dna_strand=dna_strand.replace(i,j)
      return dna_strand
    else:
      raise TypeError('Invalid Input, must be string of A, T, G, and C')