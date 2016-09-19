class ChangeCarTable < ActiveRecord::Migration
  def change
    change_table :cars do |t|
      t.integer :number
      t.integer :side_upper_seats
      t.integer :side_lower_seats
      t.integer :bucket_seats
      t.string :type
    end
  end
end
