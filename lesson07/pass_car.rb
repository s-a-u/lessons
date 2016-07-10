class PassCar < Car
   attr_reader :seats
   attr_reader :free_seats
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
     @hold_seats += 1 if @hold_seats < @seats
   end
   def free_seats

   	 @free_seats = @seats - @hold_seats
   end
   def to_s
  " #{number} Тип #{self.type} Свободные места #{@free_seats} (#{@hold_seat} занятые места)" 
  end
end