class RailwayStation
	
	attr_reader :station
    attr_accessor :trains

	def   initialize(station=[],trains=[])
	  @station = station
	  @trains=trains
	end
    def add_train(train)
	  @trains<<train
  	end
    def show_type_trains
	  puts 
	end
    def depart_train(train)
        @trains.delete(train)
    end	
    def show_trains(trains)
      puts @trains.select(t3)
    end	
   
end
