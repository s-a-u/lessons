class Car
	include Fabricant
  attr_accessor :number
  def initialize(number)
    @number = 1
    @number +=1
  end	
end