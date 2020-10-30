class CartItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart
  has_many :order_details
end

