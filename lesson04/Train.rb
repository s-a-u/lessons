class Train
<<<<<<< HEAD
	
	attr_reader :number
	attr_accessor :speed
	attr_accessor :station_index
=======
  attr_reader :number
  attr_accessor :speed
  attr_accessor :station_index
>>>>>>> 8fd81e0ec3a9efb5e094caf6c40a5d914a2751d5
  attr_accessor :cars
  def initialize(number)
    @number = number
    @cars = []
    @speed = 0
  end
  def number
    puts "#{@number}"
  end	 
  def add_car(car)
<<<<<<< HEAD
  	if speed == 0
      @cars << car if self.type == car.type
 	  end
=======
    if speed == 0
      @cars << car if self.type == car.type
    end
>>>>>>> 8fd81e0ec3a9efb5e094caf6c40a5d914a2751d5
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
    return if @route.stations[@station_index+1] == nil
<<<<<<< HEAD
  	  @route.stations[@station_index].depart_train(self)
  	  @station_index += 1
  	  @route.stations[@station_index].add_train(self)
=======
      @route.stations[@station_index].depart_train(self)
      @station_index += 1
      @route.stations[@station_index].add_train(self)
>>>>>>> 8fd81e0ec3a9efb5e094caf6c40a5d914a2751d5
  end
  def show_station  
    if @route
      puts  @route.stations[@station_index-1] if @station_index > 0
      puts  @route.stations[@station_index]
      puts  @route.stations[@station_index+1] if @route.stations[@station_index+1]
    end
  end
  def to_s
    "Поезд №#{@number} (#{@cars} вагонов)"
  end
end
