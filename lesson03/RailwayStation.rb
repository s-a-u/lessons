class RailwayStation
	
	attr_accessor :stations
	attr_reader :name_station
    attr_accessor :train_pass
    attr_accessor :train_cargo

	def       initialize(stations=[],trains=[],train_cargo,train_pass, name_station)
	 	@stations=[],
	 	@trains=[],
	 	@train_pass = train_pass
	 	@train_cargo = train_cargo
	 	@name_station = name_station
	 end

    def get_one_train
	  trains<<train_cargo
    end
    def show_type_all_trains
	
	  puts @trains.select(train_cargo)
	  puts @trains.select(train_pass)
    end
    def departure_one_train
	  @trains.delete.
    end	
    def show_all_trains_this_moment
    if departure_one_train
    end	
       puts @trains
    end	
end
