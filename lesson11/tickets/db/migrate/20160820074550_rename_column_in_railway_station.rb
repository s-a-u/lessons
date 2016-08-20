class RenameColumnInRailwayStation < ActiveRecord::Migration
  def change
    rename_column :railway_stations,:trains,:train_id
  end
end
