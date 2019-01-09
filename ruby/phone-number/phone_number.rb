class PhoneNumber

  def self.clean(input)
    phone_number=input.scan(/(?!1)\d+/).join
    phone_number if phone_number.length==10 && phone_number[0].to_i.between?(2,9) && phone_number[3].to_i.between?(2,9)
  end

end

module BookKeeping
  VERSION = 2
end