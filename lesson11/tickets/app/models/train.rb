class Train < ActiveRecord::Base
  validates :number, presence: true

  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  belongs_to :current_route, class_name: 'Route', foreign_key: :route_id
  has_many :cars, class_name: 'Car', foreign_key: :car_id
end