class Pangram
  def self.pangram?(phrase)
  	found=true
    "a".upto("z") do |i|
      if !phrase.downcase().include?(i)
      	found=false
      end
    end
found
  end
end

module BookKeeping
     VERSION = 5 # Where the version number matches the one in the test.
   end