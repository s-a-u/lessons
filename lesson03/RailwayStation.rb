class RailwayStation
	
	attr_reader :station
    attr_accessor :train
    attr_accessor :stations
    attr_accessor :trains

	def       initialize(station=[],train=[],stations=[],trains=[])
	  @stations=stations
	  @trains=trains
	  @train = train
	  @station = station
	 end
    def get_one_train
	  @trains<<train
  	end
    def show_type_all_trains
	  puts @trains.train.type.select(cargo)
	  puts @trains.train.type.select(pass)
    end
    def departure_one_train
        @trains.delete(train)
    end	
    def show_all_trains
    if departure_one_train || get_one_train
    end	
       puts @trains
    end	
end
