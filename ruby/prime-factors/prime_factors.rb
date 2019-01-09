class PrimeFactors

  def self.for limit
    output=[]
    divisor=2
      while divisor <= limit
        while limit % divisor ==0
          output << divisor
          limit = limit/divisor
        end
        divisor += 1
      end
    output
  end
end