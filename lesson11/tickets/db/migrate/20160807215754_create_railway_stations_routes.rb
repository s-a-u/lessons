class CreateRailwayStationsRoutes < ActiveRecord::Migration
  def change
    create_table :railway_statioRns_routes do |t|
      t.integer :station_id
      t.integer :route_id
    end
  end
end
