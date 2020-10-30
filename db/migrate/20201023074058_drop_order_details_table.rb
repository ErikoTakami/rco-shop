class DropOrderDetailsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :order_details
  end
end
