class AddColumnToCar < ActiveRecord::Migration
  def change
    add_column :cars, :train_id, :integer
  end
end
