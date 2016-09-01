class RanameRoutesNumberToTitle < ActiveRecord::Migration
  def change
    rename_column :routes, :number, :title
  end
end
