
 puts "Введите название товара"
 
product = Hash.new(product)
 product = gets.chomp
  
puts product
puts "Введите цену товара"
price=gets.chomp.to_f

 puts "Введите количество товара"
 amount=gets.chomp.to_f

product = Hash.new
product.each_with_index do|item, value|
    product[price] = amount+1  


 hash = {price: price, amount: amount} 
        sum = value[:price] * value[:amount]
  puts sum

  end
  

 puts "hash  #{product}"   

 puts "product  #{product.select{|item, index| }}"
    
 