class OrdersController < ApplicationController
  require 'payjp'
  #注文関連のコントローラー
  def index
    #注文一覧       マイページで表示
    #deviseのcurrent_userを渡す
    #@order = Order.find_by(user_id: current_user.id)
    #@order_detailの一覧も表示 
  end

  def new
    @order = Order.new
    @order_detail = OrderDetail.new
    binding.pry
    @cart_items = current_cart.cart_items.order(created_at: :DESC)
    #current_userの注文ページが表示される
    #注文を確定するボタンを押したら、ordersテーブル,order_derailsテーブルに保存される。createアクションが呼び出される
    
    #total_priceの表示      quantity.jsからAjax通信で値を取得する
    #cart_itemsを一覧表示    @cart_items.each do |cart_item|
    #住所入力、保存（住所がある場合は、住所を表示する）
      #addressが存在する     address#show
      #addressが存在しない   address#new
    #クレジット情報入力、保存（カード情報がある場合は、カード情報を表示する）
      #cardが存在する場合     card#show
      #cardが存在しない場合    card#new
    # @order = Order.find()
  end

  def create
    @order = Order.new(order_params)
    @order_detail = Order_detail.new(order_derail_params)

    #paymentを呼び出す
    #
    #注文を確定する
    #cart_itemsの情報
    #total_priceの情報
    #誰が買ったか
    #配送先を入力する
  end

  def destroy
    @order = Order.find(id: params[:id])
    @order.is_cancel = 1
    #注文のキャンセル(is_cancelを1にする)
    #マイページで実装
  end

  
  def payment
    #PAYJPで決済関連をする
    #PayjpAPI関連の処理
    #金額の情報を渡す
  end
  

  private
  def order_params
    params.require(:order).permit(:user_id, :total_price, :is_cancel)
  end

  def order_detail_params
    params.require(:order_detail).permit(:order_id, :cart_item_id)
  end
end
