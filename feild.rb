class Feild
  def initialize
    @bul = true
    @hh = {'a' => 'a', 'b' => 'b', 'c' => 'c',
           'd' => 'd', 'e' => 'e', 'f' => 'f',
           'g' => 'g', 'h' => 'h', 'i' => 'i'}
  end

  def analiz(letter)
    if @bul == true
      @hh[letter] = 'X'
      @bul = false
    else
      @hh[letter] = 'O'
      @bul = true
    end
  end

  def show_feild
    puts "    |   |  "
    puts "  #{@hh['a']} | #{@hh['b']} | #{@hh['c']}"
    puts "==============="
    puts "  #{@hh['d']} | #{@hh['e']} | #{@hh['f']}"
    puts "==============="
    puts "  #{@hh['g']} | #{@hh['h']} | #{@hh['i']}"
    puts "    |   |  "
  end
end
