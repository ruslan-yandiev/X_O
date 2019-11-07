require_relative 'user.rb'
require_relative 'feild.rb'

puts "Start gema"

user1 = User.new

user2 = User.new

feild = Feild.new

while User.arr.size > 0
  feild.show_feild

  puts "Enter letter"
  letter_user = STDIN.gets.strip

  user1.inspecting(letter_user)

  feild.analiz(letter_user)

  sleep 0.5

  if User.arr.size > 0
    bot_rand_namder = rand(User.arr.size)
    letter_bot = User.arr[bot_rand_namder]
    user2.inspecting(letter_bot)
  end

  feild.analiz(letter_bot)

  feild.show_feild

  if user1.bul == true && user2.bul == true
    puts 'Боевая ничья'
    exit
  elsif user1.bul == true
    puts 'Поздравляю Вы победили!!!'
    exit
  elsif user2.bul == true
    puts 'Компьютер победил'
    exit
  end
end

puts 'Боевая ничья'
