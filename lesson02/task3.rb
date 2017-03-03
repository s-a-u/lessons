
    fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

p fib.take(11) 
 # интересное решение  
 
   fiba =[1,1]
while (fiba[-1] +fiba[-2])<=100
 fiba<< fiba[-1] +fiba[-2]
end

puts fiba
