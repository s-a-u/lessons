class Train
	
	attr_reader :number
	attr_accessor :speed
	attr_accessor :station_index

  def initialize(number)
 	 
  	@number = number
  	@cars = []
    @speed = 0
 	end
  def number
	  puts "#{@number}"
  end	 
  def add_car(car)
  	if speed == 0
    @cars << car 
 	  end
  end
  def del_car(car)
    if speed == 0
    @cars.delete(car)
    end 
  end
  def show_cars
   @cars.each {|car| puts car} 
  end
  def go
		@speed =70
  end
  def show_speed
    puts "Current speed: #{@speed}"
  end
  def stop
	  self.speed =0
  end
  def add_route(route)
    @route = route
    @station_index = 0
    @route.stations[@station_index].add_train(self)
  end
  def next_station
  	@route.stations[@station_index].depart_train(self)
  	@station_index += 1
  	@route.stations[@station_index].add_train(self)
  end
  def show_station  
    if @route
    puts	@route.stations[@station_index-1]
    puts	@route.stations[@station_index]
    puts	@route.stations[@station_index+1]
 	  end
  end
  def to_s
    "Поезд №#{@number} (#{@cars} вагонов)"
  end
end