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
  end
  def show_type_trains
    puts @trains.select{|train| train.type == :pass }
	  puts @trains.select{|train| train.type == :cargo }
	end
	def depart_train(train)
      @trains.delete(train)
  end	
  def show_trains
    @trains.each {|train| puts train}
  end	
  def to_s
    "Станция #{@station} Поезд: #{@trains}"
  end
end
