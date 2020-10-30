class OrdersController < ApplicationController
  before_action :authenticate_user!
  require 'payjp'
  def index
    #注文一覧       マイページで表示
    #deviseのcurrent_userを渡す
    #@order = Order.find_by(user_id: current_user.id)
    #@order_detailの一覧も表示 
  end

  def new
    @cart_items = current_cart.cart_items.order(created_at: :DESC)
    @item_order = ItemOrder.new
    #住所入力、保存（住所がある場合は、住所を表示する）
      #addressが存在する     address#show
      #addressが存在しない   address#new
    #クレジット情報入力、保存（カード情報がある場合は、カード情報を表示する）
      #cardが存在する場合     card#show
      #cardが存在しない場合    card#new
  end

  def create
    #ordersテーブル,order_derailsテーブル,addressesテーブルに値が保存される。
    @item_order = ItemOrder.new(item_order_params)
    @cart_items = CartItem.where(cart_id: current_cart.id)
    if @item_order.valid?
      payment
      @item_order.save
      session.delete(:cart_id)

      @cart_items.each do |cart_item|
        item = Item.find(cart_item.item_id)
        item.update(stock: item.stock - cart_item.quantity)
      end
      redirect_to done_path
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(id: params[:id])
    @order.is_cancel = 1
    #注文のキャンセル(is_cancelを1にする)
    #マイページで実装
  end
  
  def done
  end

  private
  def item_order_params
    params.require(:item_order).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture_id,
                  :city, :block, :building, :phone_number, :card_token, :total_price).merge(user_id: current_user.id)
  end
  # require(:item_order)
  def payment
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: params[:total_price],
      card: params[:card_token],
      currency: 'jpy'
    )
  end
end