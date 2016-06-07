
day=(1..31).to_a

puts "Введите число"
day = gets.chomp.to_i

if 31<day && day<0
	 puts "Неправильная дата"
else
puts "#{day}"
end

puts "Введите месяц "
_month={1=>31,2=>28,3=>31,4=>0,5=>31,6=>30,7=>31,8=>31,9=>30,10=>31,11=>30,12=>31}

hight_year_momths={1=>31,2=>29,3=>31,4=>0,5=>31,6=>30,7=>31,8=>31,9=>30,10=>31,11=>30,12=>31}

month = gets.chomp.to_i

 

if( 12<month && month<0)
	 puts "Нет такого месяца"
else
	puts _month.select {|k,v| k ==month}
end


	while month >= 0 do
	days = day + month{|v|
		month = month - 1
	}
	
end

puts days

puts "Введите год"
year = gets.chomp.to_i

year=(2000..2050).to_a

hight_year=(2000..2050).to_a
index = 4
while index<50 do
	index+=4
	
end
puts sum=days+month
puts hight_year.select {|k,v| k ==year}

#if( 2500<year && year<1000)
#	 puts "Неправильная дата"
#else
#end

puts "#{day}#{month}#{year}"
