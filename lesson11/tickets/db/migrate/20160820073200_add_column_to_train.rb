class AddColumnToTrain < ActiveRecord::Migration
  def change
    add_column :trains,:ticket_id,:integer
  end
end
