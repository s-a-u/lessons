class CargoCar < Car
  attr_reader :number
  attr_accessor :free_volume
  attr_accessor :hold_vol
  def initialize(volume)
    @free_volume = volume 
    @hold_vol = 0
    super
 end
  def type
    :cargo
  end
  def occupy_vol(vol)
    @hold_vol = vol
  end
  def free_vol
    @free_volume = @free_volume - @hold_vol
  end
  def to_s
  "  #{@number} #{self.type} Свободный объем #{@free_volume} (#{@hold_vol} занятый объем)" 
  end
end