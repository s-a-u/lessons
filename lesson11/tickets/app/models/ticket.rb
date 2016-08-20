class Ticket < ActiveRecord::Base
    # validates :number, presence: true

    belongs_to :first_station, class_name: 'RailwayStation', foreign_key: :first_station_id
    belongs_to :latest_station, class_name: 'RailwayStation', foreign_key: :latest_station_id
    belongs_to :train
    belongs_to :user
end
