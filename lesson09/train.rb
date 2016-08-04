
class Train
  include Fabricant
  include Validation
  attr_accessor :number
  attr_accessor :speed
  attr_accessor :station_index
  attr_accessor :cars
  NUMBER_FORMAT = /^[a-zA-Z\d]{3}-?[a-zA-Z\d]{2}$/
  validate :number, :format, NUMBER_FORMAT
  @@numbers = []
  class << self
    def find(numb)      
      @@numbers.select { |k| k.number == numb }[0]
    end
  end
  def initialize(number)
    @number = number
    @cars = []
    @speed = 0
    @@numbers << self
  end
  def add_car(car)
      raise 'car is not Car.class' unless car.is_a?(Car)
      return unless speed == 0
      @cars << car if type == car.type
  end
  end
  def del_car(car)
    @cars.delete(car) if speed == 0
  end

  def go
    @speed = 70
  end

  def show_speed
    @speed
  end

  def stop
    self.speed = 0
  end

  def add_route(route)
    @route = route
    @station_index = 0
    @route.stations[@station_index].add_train(self)
  end

  def next_station
    return if @route.stations[@station_index + 1].nil?
    @route.stations[@station_index].depart_train(self)
    @station_index += 1
    @route.stations[@station_index].add_train(self)
  end

  def stations
    if @route
      puts @route.stations[@station_index - 1] if @station_index > 0
      puts @route.stations[@station_index]
      puts @route.stations[@station_index + 1] if @route.stations
      [@station_index + 1]
    end
  end

  def to_s
    "Поезд №#{@number}, #{type} (вагоны#{@cars})"
  end

  def each_car
    @cars.each { |car| yield(car) }
  end

# def  cars (car,&block)
#   block.call(car)

#   cars(abc)
#   block.call(str)
#   yield(car)  # == block.call
# end
#  def m(car,&block)
#  if block_given?
#   yield(car)
# else puts @cars
# end