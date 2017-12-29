class Pometes
  def verse(number)
    case number
    when 0
      "Si miereu el vent d'on ve, veureu el pomer com dansa,\n" +
      "si mireu el vent d'on ve, veureu com dansa el pomer.\n"
    when 1
      "1 pometa té el pomer, d'1 una, d'1 una,\n" +
      "1 pometa té el pomer, d'1 una li'n caigué.\n"
    else
      "#{number} pometes té el pomer, de #{number} una, de #{number} una,\n" +
      "#{number} pometes té el pomer, de #{number} una li'n caigué.\n"
    end
  end

  def verses(starting, ending)
    starting.downto(ending).map do |i|
      verse(i)
    end.join("\n" + verse(0) + "\n")
  end

  def song
    verses(10, 1) + "\n#{verse(0)}"
  end
end

## If you want to see the song in your console uncomment the next line and
## execute `ruby lib/pometes.rb`
# puts Pometes.new.song
