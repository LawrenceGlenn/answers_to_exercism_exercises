module Enumerable

  def keep(&input)
    result =[]
    each do |element|
      result << element if input.call(element)
    end
    result
  end

  def discard(&input)
    result =[]
    each do |element|
      result << element if !input.call(element)
    end
    result
  end

end