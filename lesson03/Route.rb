class Route
	attr_reader :first_stationr
	attr_reader :latest_station
	attr_accessor :new_station
	attr_accessor :stations

	def initialize(first_station,latest_station)
      @stations = [first_station,latest_station]
    end
    def route
      @stations = [first_station,new_station,latest_station]	
	end
	def add_station(new_station)
      @stations.insert(-2,new_station)
	end
	def del_station(station)
	  @stations.delete(station)
    end
    def intermediate_station
		puts @new_station
	end	
	def show_all_station
	  puts  @stations
    end	
end