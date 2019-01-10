class Series

  def initialize (num)
    @num=num
  end

  def slices(size)
    raise ArgumentError.new() if size>@num.length
    (0..@num.length-size).map { |element| @num[element, size] }
  end
end