class CargoCar < Car
  def initialize(volume)
    @volume = volume 
    @load_vol = 0
    super
 end
  def type
    :cargo
  end
  def occupy_vol(vol)
  	@load_vol = @load_vol + vol if vol < @volume
  end
  def free_vol(vol)
    @load_vol = @load_vol - vol
    raise 'invalid volume' if @load_volume < 0
  end
  def load_vol
  	@load_vol
  end
  def to_s
  "  #{@number} #{self.type}  Oбъем #{@volume} (#{@hold_vol} занятый объем)" 
  end
end