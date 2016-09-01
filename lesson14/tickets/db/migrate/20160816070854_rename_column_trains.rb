class RenameColumnTrains < ActiveRecord::Migration
  def change
    rename_column :trains, :ticket_id, :car_id

  end
end
