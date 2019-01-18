class Trinary
  def initialize(tri)
    @tri= tri
  end
  def to_decimal()
    if @tri.scan(/[^012]/).empty?
      @tri.to_s.chars.map(&:to_i).reverse.each_with_index.inject(0){ |sum, (x,index)| sum+x*3**index}
    else
      0
    end
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end