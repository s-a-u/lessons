 class PassCar < Car
   attr_reader :seats
   attr_reader :hold_seats
   def initialize(seats)
  	 @seats =(seats)
     @hold_seats = 0
     super
   end
   def type
     :pass
   end 
   def occupy_seat
     @hold_seats += 1 if 0 < @hold_seats < @seats
   end
   def free_seats
     @hold_seats -=1 if 0 < @hold_seats < @seats
   end
   def hold_seats
   	 @hold_seats
   end
   def to_s
     " #{number} Тип #{self.type} Свободные места #{@seats} (#{@hold_seat} занятые места)" 
   end
end