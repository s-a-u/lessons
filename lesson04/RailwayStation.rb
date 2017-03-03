class RailwayStation
  attr_reader :station
  attr_accessor :trains
  def   initialize(station)
    @station = station
    @trains =[]
  end 
  def add_train(train)
    @trains << train
  end
  def show_type_trains
    puts @trains.select{|train| train.type == :pass }
<<<<<<< HEAD
	  puts @trains.select{|train| train.type == :cargo }
	end
	def depart_train(train)
      @trains.delete(train)
=======
    puts @trains.select{|train| train.type == :cargo }
  end
  def depart_train(train)
    @trains.delete(train)
>>>>>>> 8fd81e0ec3a9efb5e094caf6c40a5d914a2751d5
  end	
  def show_trains
    @trains.each {|train| puts train}
  end	
  def to_s
    "Станция #{@station} Поезд: #{@trains}"
  end
end
