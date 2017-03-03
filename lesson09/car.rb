class Car
  include Fabricant
  attr_accessor :number
  def initialize(number)
    @number = number
    @number += 1
    #   end
    # end
    # def
    # @number = number.random(number)
    # rand(36**number).to_s(36)
  end
end
