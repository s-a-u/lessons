class CargoTrain < Train
  attr_reader :number
  def initialize(number)
    super 
   end
  def type
    :cargo
  end 
end