class CardsController < ApplicationController

#   require "payjp"

#   #カードを登録
  def new
    # card = Card.where(user_id: current_user.id)
    # redirect_to action: "show" if card.exists?
  end

  def create
    #customerオブジェクトを作成
    
  end

#   def pay
#     Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
#     if params['payjp-token'].blank?
#       redirect_to action: "new"
#     else
#       customer = Payjp::Customer.create(
#       description: '登録テスト', 
#       email: current_user.email, 
#       card: params['payjp-token'],
#       metadata: {user_id: current_user.id}
#       ) 
#       @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
#       if @card.save
#         redirect_to action: "show"
#       else
#         redirect_to action: "pay"
#       end
#     end
#   end
end
