class Train
	attr_accessor :speed
	attr_reader :train_number
	attr_reader :type
	attr_accessor :container
	attr_accessor :route

 def       initialize(speed=0,train_number=[],type=[cargo,passenger],container=[],route=[])

 	  @speed = speed
  	@train_number = train_number
  	@type =type
 	  @container =container
end 	
def train
		puts "Введите номер, тип количество вагонов"  
	  @train_number	= gets.chomp.to_i
	  puts "Введите тип"
	  @type = gets.chomp
	  puts "Введите количество вагонов"
	  @container = gets.chomp.to_i
  
end

def set_speed
	puts "Введите новую скорость"  
		  @speed=gets.chomp.to_i
end
def show_speed
  puts "Current speed: #{@speed}"
end
def stop
	self.speed =0
	puts"stop"
end
def show_container
	puts "show_container#{@container}"

end
def add_delete_container
	if stop		
	end	
	container=[]
	  puts "Введите количество вагонов"
	@container = gets.chomp.to_i
end
def get_route	

	@route=[first_station,new_station,next_station,latest_station ]
	@station_index = 0
	@route.stations[@station_index]
  @next_station = next_station

end
def intermediate_station
		@current_station
end
def change_station_at_route
puts "Введите новую станцию"
	@next_station = gets.chomp
	@route.stations.insert(-2, next_station)
end
def show_station

puts 	@route.stations[@station_index].select(first_station,new_station,next_station)

end
end



