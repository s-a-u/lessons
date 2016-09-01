class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :type
      t.integer :upper_seats
      t.integer :lower_seats

      t.timestamps null: false
    end
  end
end
