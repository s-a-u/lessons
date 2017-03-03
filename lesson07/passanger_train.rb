class PassangerTrain < Train
  attr_reader :number
  def initialize(number)
    super
  end

  def type
    :pass
  end
end
