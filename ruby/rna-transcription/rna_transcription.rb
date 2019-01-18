class Complement
	def self.of_dna dna
		rna=""
  dna.each_char do |char|
    case char
    when "G"
      rna <<"C"
    when "C"
      rna << "G"
    when "T"
      rna << "A"
    when "A"
      rna <<"U"
    else
      rna=""
      break
end
	end
	rna



end
end


module BookKeeping
     VERSION = 4 # Where the version number matches the one in the test.
   end