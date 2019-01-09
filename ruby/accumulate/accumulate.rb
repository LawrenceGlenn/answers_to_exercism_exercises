module Enumerable
  def accumulate(&input)
    result = []
    each do |element|
      result << input.call(element)
    end
    result
  end
end

module BookKeeping
  VERSION = 1
end