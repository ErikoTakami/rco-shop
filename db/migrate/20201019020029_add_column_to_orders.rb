class AddColumnToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :total_price, :integer, null: false, after: :user_id
    add_column :orders, :is_cancel, :boolean, null: false, default: 0, after: :total_price 
  end
end
