require_relative 'user.rb'

puts "Start gema"

user1 = User.new

user2 = User.new

while User.arr.size > 0
  File.open('file1.txt', 'r'){|f| puts f.readlines}

  puts "Enter letter"
  letter_user = STDIN.gets.strip

  user1.inspecting(letter_user)

  sleep 0.5

  if User.arr.size > 0
    bot_rand_namder = rand(User.arr.size)
    letter_bot = User.arr[bot_rand_namder]
    user2.inspecting(letter_bot)
  end

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
