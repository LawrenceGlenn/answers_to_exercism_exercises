class Squares
  def initialize (num)
		@num=num
  end

  def square_of_sum
  	tot=0
    1.upto(@num) do |i|
	  tot+=i
    end
    tot = tot**2
  end

  def sum_of_squares
  	tot=0
    1.upto(@num) do |i|
	  tot+=i**2
    end
    tot
  end
  def difference
  	square_of_sum-sum_of_squares
  end

end

module BookKeeping
     VERSION = 4 # Where the version number matches the one in the test.
   end