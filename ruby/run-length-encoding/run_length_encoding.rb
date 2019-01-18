class RunLengthEncoding

  def self.encode(input)
    input.chars.chunk{|x| x}.map{|x,y| y.size>1? "#{y.size}#{x}":"#{x}"}.join
  end

  def self.decode(input)
    output=""
    num=1
    input.scan(/\p{Digit}+|[a-zA-Z ]?/) do |chr|
      if (Integer(chr) != nil rescue false)
        num=Integer(chr)
      else
        num.times {output=output+chr}
        num=1
      end
    end
     output
  end

end

module BookKeeping
  VERSION = 3
  end