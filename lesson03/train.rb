class Train
	attr_accessor :speed
	attr_reader :train_number
 def       initialize(speed=0,number=1.0)
 	@speed = speed
 	@train_number = train_number
end 	
def train_number
	@train_number=[]

end

def go_add_speed
	  @speed=100
end
def show_current_speed
 puts "Current speed: #{@speed}"
end
def stop
	self.speed =0
	puts"stop"
end
def show_container
	puts "show_container"
end
def add_delete_container
	if stop
		@speed = 0
	end	
end
def get_route	
  get_route
  @station
	@current_station
end
def change_station_at_route
	@current_station
end
def show_station
	@station
	@current_station
puts "show_station_this_next_statoin"
end
end