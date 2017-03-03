class AddColumnToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :train_id, :integer
    add_column :tickets, :user_id, :integer
  end
end
