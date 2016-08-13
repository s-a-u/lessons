class AddNumberToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :number, :string
  end
end
