class Hamming
	def self.compute(string1,string2)
		num=0
		if string1.length != string2.length
			then raise ArgumentError.new("Inputs unequal")
		else
		for i in 0...string1.length do
			if string1[i].chr != string2[i].chr
				then num+=1
			end
			#string1[i].chr != string2[i].chr ? num+=1 : num
		end
	end
		num
	end
end

 module BookKeeping
     VERSION = 3 # Where the version number matches the one in the test.
   end