module CartsHelper
  def stock_array_maker(cart_item)              #在庫(stock)の数をプルダウン表示する
    current_stock_array = []                    #配列を生成

    stock = cart_item.item.stock
    stock.times do |quantity|                   #stockの現在の在庫数まで、ループを回す。
      if quantity < stock                       #quantityが在庫未満かどうか？
        current_stock_array << quantity + 1     #quantityは0からスタートしているので、1足した数を入れる必要がある。
      else
        break                                   #ループを抜ける
      end
    end
    current_stock_array # 戻り値
  end

  def cart_item_price_calc(cart_item)
    cart_item.item.price * cart_item.quantity   #商品価格×数量 = 各商品ごとの合計金額
  end

end
