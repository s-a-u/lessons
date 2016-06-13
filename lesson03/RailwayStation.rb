class RailwayStation
	
	attr_accessor :stations
	attr_accessor :route
    attr_accessor :train

	def       initialize(stations=[],train=[])
	 	@stations=[],
	 	@train=[],
	 	@route
	 	end

def get_one_train
	@route.stations[@station_index].add_train(self)
@train_number
end
def show_type_all_trains
	cargo /passenger
	puts @type.select(cargo)
	puts @type.select(passenger)
end
def departure_one_train
	departure_one_train
	@route.stations[@station_index].delete_train(self)
end	
def show_all_trains_this_moment
  if departure_one_train
  end	
   puts @trains
end	