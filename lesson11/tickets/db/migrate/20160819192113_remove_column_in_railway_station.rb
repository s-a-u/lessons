class RemoveColumnInRailwayStation < ActiveRecord::Migration
  def change
    remove_column :railway_stations,:routes
    remove_column :railway_stations,:trains
  end
end
