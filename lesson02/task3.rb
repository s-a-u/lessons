
    fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

p fib.take(11) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
   

   i=1
  while i<=100
 
   
   i+= 1
end

puts i
       