class Phrase
  def initialize (phrase)
    @phrase = phrase.downcase.split(/'*(?:(?!')\W)+'*/)
  end

  def word_count
    words = Hash.new
    @phrase.each { |word| words[word]=@phrase.count(word) }
    words
  end
end

module BookKeeping
  VERSION = 1
end