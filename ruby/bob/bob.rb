class Bob
  def self.hey(remark)
    case
    when remark.match(/[a-zA-Z]/) && remark==remark.upcase
      "Whoa, chill out!"
    when remark.strip.end_with?("?")
      "Sure."
    when !remark.match(/[a-zA-Z0-9]/)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end

module BookKeeping
  VERSION = 1
end