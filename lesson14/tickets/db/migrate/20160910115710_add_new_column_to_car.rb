class AddNewColumnToCar < ActiveRecord::Migration
  def change
    add_column :cars, :side_upper_seats, :integer
    add_column :cars, :side_lower_seats, :integer
    add_column :cars, :sit_seats, :integer
    t.string :type
  end
end
