class Grains
  @@Board_size=64
  def self.square (num)
    num>0 && num<=@@Board_size? 2**(num-1) : (raise ArgumentError.new(""))
  end
  def self.total
    (2**@@Board_size)-1
    #this is much faster, but I wanted to make sure I used a variable so the board could be altered later
  end
end

module BookKeeping
  VERSION = 1
end