class Sieve
  def initialize(num)
  	@notprime = []
  	@nums =[]
  	2.upto(num) do |i|
  	  @nums << i
      end
  	@prime = []
  end
  def primes
    @nums.each_with_index do |val, index|
      if !@notprime.include?(val)
        @prime << val 
        @nums[index..-1].each do |i|
          @notprime << i if i%val==0
        end
      end
    end 
    @prime
  end
end

module BookKeeping
     VERSION = 1 # Where the version number matches the one in the test.
   end