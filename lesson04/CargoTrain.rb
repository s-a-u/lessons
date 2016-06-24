class CargoTrain < Train

  attr_reader :number
  attr_accessor :cars
  
  def initialize(number,cars=[])
   
    @number = number
    @cars =cars
  
  end
  def number
    puts "#{@number}"
  end  
  def type
  :cargo
    puts "#{@type}" 
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
      @cars << Car if Car.instance_of? CargoCar
    else 
      go
    end
  end
  
end