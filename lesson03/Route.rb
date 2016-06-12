class Route
	attr_accessor :station
	attr_accessor :current_station
	attr_accessor :route

	def       initialize(station=0,current_station=0,train_number=0)
	 	@station=station,@current_station=current_station,
	 	@train_number=train_number)
	 	
	def begin_station derive_station
        @station
	end	
	def intermediate_station
		@current_station
	end	
	def add_station
        @current_station
	end

	def delete_station
		@current_station
	end
	def show_all_station
       @current_station
	end	