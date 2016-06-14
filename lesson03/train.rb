class Train
	attr_accessor :speed
	attr_reader :train_number
	attr_reader :type
	attr_accessor :container
	attr_accessor :route

 def       initialize(train_number=[],
 	type=[],container=[],speed=0,route=[])

 	  @speed = speed
  	@train_number = train_number
  	@type =type
 	  @container =container
 	  @route = route
end 	
def train_number
	 puts "#{@train_number}"
end	 
def type	  
	@type
	puts "#{@type}" 
end	
def container	  
	@container
end
def speed
		@speed
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
def del_container
	if stop		
	end	
	@container.delete(-1)
end
def add_container
	@container.delete(-1)
end
def get_route
	@station_index = 0
  @route.stations[@station_index].add_train(self)
end
def intermediate_station
		@new_station
end
def change_station_at_route
  @route.stations.insert(-2, new_station)
end
def show_station
  puts 	@route.stations[@station_index].select(first_station,new_station,latest_station)
end
end