class AddRailwayStationIdToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :first_station
    add_belongs_to :tickets, :latest_station
  end
end
