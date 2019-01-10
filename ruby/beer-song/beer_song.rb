class BeerSong
  def verse(ver)
    case ver
      when 2
        output = "#{ver} bottles of beer on the wall, #{ver} bottles of beer.\nTake one down and pass it around, #{ver-1} bottle of beer on the wall.\n"
      when 1
        output = "#{ver} bottle of beer on the wall, #{ver} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      when 0
        output = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      else
        output = "#{ver} bottles of beer on the wall, #{ver} bottles of beer.\nTake one down and pass it around, #{ver-1} bottles of beer on the wall.\n"
    end
  end

  def verses(start, finish)
    output=""
    start.downto(finish+1) { |i| output=output+self.verse(i)+"\n" }
    output = output+self.verse(finish)
  end
end


module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end