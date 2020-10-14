class ChangeColumnToCartItem < ActiveRecord::Migration[6.0]
  def up
    change_column_default :cart_items, :quantity, 1
  end
  
  def down
    change_column_default :cart_items, :quantity, 0
  end
end
