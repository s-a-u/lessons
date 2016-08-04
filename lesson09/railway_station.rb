class RailwayStation
  attr_reader :station
  attr_accessor :trains
  @@instances = []
  class << self
    def all_stations
      @@instances
    end
  end
  def initialize(station)
    @station = station
    @trains = []
    @@instances << @station
  end

  def add_train(train)
    @trains << train
    validate!
  end

  def pass_trains
    @trains.select { |train| train.type == :pass }
  end

  def cargo_trains
    @trains.select { |train| train.type == :cargo }
  end

  def depart_train(train)!
    @trains.delete(train)
  end

  def show_trains
    @trains.each { |train| puts train }
  end

  def to_s
    "Станция #{@station} Поезд: #{@trains}"
  end

  def each_train
    @trains.each { |train| yield train }
  end

  protected

  def validate!
    @trains.each do |train|
      raise 'train not Train.class' unless train.is_a?(Train)
    end
    true
  end
end
