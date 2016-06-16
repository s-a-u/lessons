class Train
	
	attr_reader :number
	attr_reader :type
	attr_accessor :container
	attr_accessor :speed
	attr_accessor :station_index

  def initialize(number,type,container=1)
 	 
  	@number = number
  	@type =type
 	  @container =container
 	  @speed = 0
 	end

  def number
	 puts "#{@number}"
  end	 
  def type	  
  	@type
	  puts "#{@type}" 
  end	
  def show_container
	  puts "#{@container}"
  end
  def del_container
	  if @speed == 0
	  end	
	  @container-=1
  end
  def add_container
  	if @speed ==0
  	end	
	  @container +=1
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
  def add_route(route)
   @route = route
   @station_index = 0
   @route.stations[@station_index]
   puts @station_index
	end
  def next_station
  	@route.stations[@station_index].depart_train(self)
  	@station_index += 1
  	puts @station_index
	  @route.stations[@station_index].add_train(self)
	end
  def show_station
		@route.stations
  end
  
end