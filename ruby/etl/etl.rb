class ETL
  def self.transform(old)
    output = Hash.new
    old.each_pair{ |k,v| v.each{ |x| output[x.downcase] = output.has_key?(x) ? [k,output[x]].flatten : k}}
    return output
  end
end

module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end