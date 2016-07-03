
class Train
  include Fabricant
  attr_accessor :number
  attr_accessor :speed
  attr_accessor :station_index 
  attr_accessor :cars
  NUMBER_FORMAT = /^[a-zA-Z\d]{3}-?[a-zA-Z\d]{2}$/
  @@numbers = []
  class << self
    def find(numb)
      @@numbers.select{|k| k.number == numb}[0]
    end
  end
  def initialize(number)
    @number = number
    @cars = []
    @speed = 0
    @@numbers << self
    validate!
  end
  def number
    @number
  end	 
  
  def valid?
    validate!
  rescue
    false
  end
  begin
  def add_car(car)
    if speed == 0
      @cars << car if self.type == car.type
    end
  raise "wrong car type"  if @cars.each {|car| car.is_a?(Car)}#не работает
  rescue RuntimeError => e #не знаю что это, оно не работает
      puts e.inspect       # было в лекции
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
    return if @route.stations[@station_index+1] == nil
      @route.stations[@station_index].depart_train(self)
      @station_index += 1
      @route.stations[@station_index].add_train(self)
  end
  def show_station  
    if @route
      puts @route.stations[@station_index-1] if @station_index > 0
      puts @route.stations[@station_index]
      puts @route.stations[@station_index+1] if @route.stations[@station_index+1]
    end
  end
  def to_s
    "Поезд №#{@number} (#{@cars} вагонов)"
  end
  protected
  def validate!
    raise "number has invalid format" if number !~ NUMBER_FORMAT
      true
  end
end
