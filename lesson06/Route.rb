class Route
  attr_reader :first_station
  attr_reader :latest_station
  attr_accessor :new_station
  attr_accessor :stations
  def initialize(first_station,latest_station)
    @stations = [first_station,latest_station]
    @new_station = new_station
  end
  def valid?
    validate!
  rescue
    false
  end
  def add_station(new_station)
    @stations.insert(-2,new_station)
    validate!
  end
  def del_station(station)
    @stations.delete(station)
  end
  def show_all_station
    @stations.each {|station| puts station}
  end
    protected
  def validate!
    raise "invalid class" if !@stations.each{|station| station.is_a?(RailwayStation)}
    true
  end
end
