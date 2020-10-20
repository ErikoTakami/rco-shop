class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true, after: :id
      t.references :cart_item, null: false, foreign_key: true, after: :order
      t.timestamps
    end
  end
end
