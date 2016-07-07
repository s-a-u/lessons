class PassCar < Car
   attr_reader :seats
  def initialize(seats)
    @seats =(seats)
    @seat = 0
   end
   def type
     :pass
   end 
   def occupy_seat
     @seat += 1
   end
   def hold_seats
     @seat   	
   end
   def free_seats
   	 @seats = @seats - @seat
   end
   def to_s
  "Свободные места #{@seats} (#{@seat} занятые места)" 
  end
end