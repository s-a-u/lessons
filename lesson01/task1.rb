puts "Как Bac зовут?"
name = gets.chomp

puts "#{name}, введите Bаш рост"
hight = gets.chomp
puts"Ваш рост-#{hight}"
weight = hight.to_i
puts"Ваш идеальній вес#{110 - hight.to_i}"
if weight<0
puts"Ваш вес уже идеальний"
end
