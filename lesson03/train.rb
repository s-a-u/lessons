class Train
	attr_accessor :speed
	attr_reader :train_number
	attr_reader :type
	attr_accessor :container
	attr_accessor :route

 def initialize(train_number,type,container=1)
 	 
  	@train_number = train_number
  	@type =type
 	  @container =container
 	  @speed = 0
  end

  def train_number
	 puts "#{@train_number}"
  end	 
  def type	  
  	@type
	  puts "#{@type}" 
  end	
  def show_container
	  puts "#{@container}"
  end
  def del_container
	  self.speed =0
	  @container.delete(-1)
  end
  def add_container
  	self.speed =0
	  @container.delete(-1)
  end
  def go
		@speed =70
  end
  def show_speed
    puts "Current speed: #{@speed}"
  end
  def stop
	  self.speed =0
  	puts"stop"
  end
  def route(route)
	  @station_index = 0
    @route.stations[@station_index].add_train(self)
  end
  def go_to_next_station(station)
	  @station_index += 1
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