class CargoCar < Car
  attr_reader :volume
  attr_reader :load_vol
  def initialize(volume)
    @volume = volume
    @load_vol = 0
    super
  end

  def type
    :cargo
  end

  def occupy_vol(vol)
    @load_vol += vol if (@load_vol + vol) <= @volume && vol >= 0
  end

  def free_vol(vol)
    @load_vol -= vol
    raise 'invalid volume' if @load_volume < 0
  end

  def to_s
    "Вагон № #{@number} Тип #{type} Oбъем #{@volume}
    (#{@load_vol} занятый объем)"
  end
end
