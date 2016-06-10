products ={}

loop do
	 puts "Введите название товара"

  name = gets.chomp
   break if name == "стоп"	
 
  puts "Введите цену товара"
  amount=gets.to_f

  puts "Введите количество товара"
  price=gets.to_f

products[name] ={
	amount: amount,
	price: price
}
end

puts products

products.each do |product,data|
	puts "#{product} = #{data[:amount] * data[:price]}"
end	

sum = 0
products.each do |product,data|
sum += data[:amount] * data[:price]
end	

puts "Сумма всех покупок = #{sum}"