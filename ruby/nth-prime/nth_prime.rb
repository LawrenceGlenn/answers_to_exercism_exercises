require 'prime'
class Prime
  def nth(num)
    if num>0
      Prime.take(num).last
    else
      raise ArgumentError.new("there is no zero prime")
    end
  end
end

module BookKeeping
    VERSION = 1 # Where the version number matches the one in the test.
  end