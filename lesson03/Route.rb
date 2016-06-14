class Route
	attr_reader :first_station
	attr_reader :latest_station

	attr_accessor :stations
	def initialize(first_station,latest_station,stations=[],new_station="")
      @stations = [first_station, latest_station]
      @new_station=new_station
    end
	def add_station
		puts "Введите станцию "
	 	@new_station = gets.chomp
        @stations.insert(-2, new_station)
	end

	def delete_station
		puts "Введите станцию "
	 	@new_station = gets.chomp
        @stations.delete(-2, new_station)
    end
    def intermediate_station
		puts @new_station
	end	
	def show_all_station
	  puts  @stations
    end	
end