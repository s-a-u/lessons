puts "Как Bac зовут?"
name = gets.chomp

puts "#{name}, введите Bаш рост"
hight = gets.chomp
puts"Ваш рост-#{hight}"
weight = hight.to_i - 110

if weight < 0
  puts"Ваш вес уже идеальний"
else
  puts"Ваш идеальній вес#{hight.to_i - 110}"
end
