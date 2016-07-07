class CargoCar < Car
  attr_accessor :volume
  def initialize(volume)
    @volume = volume.to_i 
   end
  def type
    :cargo
  end
  def occupy_vol(vol)
    @vol = vol
  end
  def hold_vol
    @vol
  end
  def free_vol
    @volume =@volume - @vol
  end
  def to_s
  "Свободный объем #{@volume} (#{@vol} занятый объем)" 
  end
end