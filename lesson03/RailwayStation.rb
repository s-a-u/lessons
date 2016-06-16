class RailwayStation
	
	attr_reader :station
    attr_accessor :trains

	def   initialize(station,trains=[])
	  @station = station
	  @trains=trains
	end
    def add_train(train)
      @trains<<train
  	end
    def show_type_trains
      @trains.each {|train| puts train.type}
	  puts @trains.select{|train| train.type == :pass }
	end
    def depart_train(train)
        @trains.delete(train)
    end	
    def show_trains(trains)
      puts @trains.select(t3)
      @trains.each {|train| puts train}
    end	
   
end
