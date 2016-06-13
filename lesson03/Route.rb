class Route
	attr_reader :first_station
	attr_reader :latest_station

	attr_accessor :stations
	attr_accessor :

	def initialize(first_station, latest_station,stations=[],new_station=0)
      @stations = [first_station, latest_station]
      @new_station=new_station
    end
	def 
	 	station_list=[ ]
	 	puts "Введите станцию отправления"
	 	first_station = gets.chomp

        puts "Введите станцию прибтия"
        latest_station = gets.chomp
   
	end
		
	def intermediate_station
		@new_station
	end	
	def add_station
        @stations.insert(-2, new_station)
	end

	def delete_station
        @stations.delete(-2, new_station)
    end
	def show_all_station
	   @stations
    end	