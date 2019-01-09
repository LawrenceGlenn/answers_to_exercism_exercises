class Integer
  def numerals
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
  def to_roman
    result = ""
    num = self
    numerals.keys.each do |i|
      ans , remain = num.divmod(i)
      result << numerals[i] * ans
      num=remain
    end
    result
  end
end

module BookKeeping
     VERSION = 2 # Where the version number matches the one in the test.
   end