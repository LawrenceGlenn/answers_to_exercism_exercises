class SumOfMultiples
  def initialize(*input)
    @nums=input
  end
  def to(limit)
    @sum=0
    1.upto(limit-1) {|num| @sum+=num if @nums.any? {|value| num % value==0}}
    @sum
  end
end

module BookKeeping
  VERSION = 2
end