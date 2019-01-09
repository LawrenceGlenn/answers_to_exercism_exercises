class Binary

  def self.to_decimal (input)

      raise ArgumentError.new() if input.scan(/(?:(?!0)(?!1).)+/).any?

     input.chars.inject(0) {|result, element| (result*2)+element.to_i}

  end

end

module BookKeeping
  VERSION = 3
end