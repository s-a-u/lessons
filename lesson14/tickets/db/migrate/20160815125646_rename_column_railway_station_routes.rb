class RenameColumnRailwayStationRoutes < ActiveRecord::Migration
  def change
    rename_column :railway_stations_routes, :station_id, :railway_station_id
  end
end
