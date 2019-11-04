class User
  attr_accessor :bul

  @@arr = %w[a b c d e f g h i]

  def self.arr
    @@arr
  end

  def initialize
    @letter = nil
    @arr_letter = []
    @bul = false
  end

  def inspecting(letter)
    @letter = letter
    unless @@arr.include?(@letter)
      while @@arr.include?(@letter) == false
        puts 'Hes not the index in the feild'
        puts "Enter index the feild"
        @letter = STDIN.gets.strip
      end
    end

    @@arr.delete(@letter)

    @arr_letter << @letter

    show

    if @arr_letter.include?('a') && @arr_letter.include?('b') && @arr_letter.include?('c')
      result

      result elsif @arr_letter.include?('d') && @arr_letter.include?('e') && @arr_letter.include?('f')

      result elsif @arr_letter.include?('g') && @arr_letter.include?('h') && @arr_letter.include?('i')

      result elsif @arr_letter.include?('a') && @arr_letter.include?('d') && @arr_letter.include?('g')

      result elsif @arr_letter.include?('b') && @arr_letter.include?('e') && @arr_letter.include?('h')

      result elsif @arr_letter.include?('c') && @arr_letter.include?('f') && @arr_letter.include?('i')

      result elsif @arr_letter.include?('a') && @arr_letter.include?('e') && @arr_letter.include?('i')

      result elsif @arr_letter.include?('c') && @arr_letter.include?('e') && @arr_letter.include?('g')
    end
  end

  def result
    @bul = true
  end

  def show
    puts "Выбранные поля #{@arr_letter}"
  end
end
