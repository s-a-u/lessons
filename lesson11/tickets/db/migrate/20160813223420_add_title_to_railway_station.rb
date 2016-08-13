class AddTitleToRailwayStation < ActiveRecord::Migration
  def change
    add_column :railway_stations, :title, :string

  end
end
