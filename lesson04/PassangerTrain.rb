 class PassangerTrain < Train

  attr_reader :number
  attr_accessor :cars
	
  def initialize(number,cars=[])
 	 
  	@number = number
  	@cars =cars
 	@speed = 0
 	end
  def number
	  puts "#{@number}"
  end	 
  def show_cars
	  puts "#{@cars}"
  end
  def del_cars
	  if speed == 0
	  	  @cars-=1
	  else
	  	go
	  end
  end
  def add_cars
  	if speed == 0
 	      @cars +=1
 	   @cars << PassCar if PassCar.instance_of? PassCar
 	  else 
 	  	go
 	end
  end
end