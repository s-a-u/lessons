class RailwayStation
  attr_reader :station
  attr_accessor :trains
  @@instances = []
  class << self
    def all_stations
      @@instances 
    end 
  end
  def   initialize(station)
    @station = station
    @trains =[]
    @@instances << @station 
  end 
  def add_train(train)
    @trains << train
    validate!
  end
  def pass_trains
    @trains.select{|train| train.type == :pass }
  end
  def cargo_trains
    @trains.select{|train| train.type == :cargo }
  end
  def depart_train(train)!
    @trains.delete(train)
  end	
  def show_trains
    @trains.each {|train| puts train}
  end	
  def to_s
    "Станция #{@station} Поезд: #{@trains}"
  end
  def validate!
   @trains.each {|train| raise "train not Train.class" if !train.is_a?(Train)}
    true
  end
end
