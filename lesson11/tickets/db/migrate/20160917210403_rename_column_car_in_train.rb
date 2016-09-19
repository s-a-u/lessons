class RenameColumnCarInTrain < ActiveRecord::Migration
  def change
    rename_column :trains,:car_id,:car_number
  end
end
