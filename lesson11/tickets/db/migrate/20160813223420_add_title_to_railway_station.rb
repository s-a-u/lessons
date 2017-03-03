class AddTitleToRailwayStation < ActiveRecord::Migration
  def change
    add_column :railway_stations, :title, :string
    add_column :railway_stations, :trains, :string
    add_column :railway_stations, :routes, :string

  end
end
