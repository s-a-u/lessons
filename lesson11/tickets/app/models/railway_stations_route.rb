class RailwayStationsRoute < ActiveRecord::Base

  belongs_to :railway_station
  belongs_to :route

  validates :railway_station_id, uniqueness: { scoupe: :route_id }
end
