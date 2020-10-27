class ItemOrder
  include ActiveModel::Model

  attr_accessor :last_name, :first_name, :last_name_kana, :first_name_kana, 
                :postal_code, :prefecture_id, :city, :block, :building, :phone_number,
                :card_token, :customer_token,
                :total_price, :user_id, :address_id, :is_cancel, :order_id, :cart_item_id

  with_options presence: true do
    validates :last_name, :first_name,
                format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください"}
    validates :last_name_kana,:first_name_kana,
                format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力してください"}
    validates :postal_code,
                format: { with: /\A\d{3}[-]\d{4}\z/, message: 'にはハイフンが必要です' }
    validates :prefecture_id, numericality: { other_than: 0 }
    validates :city
    validates :block
    validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'が正しくありません' }
    validates :card_token
  end
  

  def save
    @address = Address.create(last_name: last_name, first_name: first_name, last_name_kana: last_name_kana, first_name_kana: first_name_kana,
                   postal_code: postal_code, prefecture_id: prefecture_id, city: city, block: block, building: building, phone_number: phone_number, user_id: user_id)
    @order = Order.create(total_price: total_price, user_id: user_id, address_id: @address.id)
    #以下,order_detailsテーブルに値を保存する処理
    @cart = Cart.find_by(user_id: user_id)
    @cart_items = CartItem.where(cart_id: @cart.id)
    #gem 'activerecord-import'を使用し、複数のcart_itemをorder_detailsテーブルに保存する
    order_details = []
    @cart_items.each do |cart_item|
      order_details << OrderDetail.new(order_id: @order.id, cart_item_id: cart_item.id)
    end
    OrderDetail.import order_details
  end
end
