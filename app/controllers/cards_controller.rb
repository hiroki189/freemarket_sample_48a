class CardsController < ApplicationController
 


  def new 
    @card = CreditCard.new
  end


  def create #PayjpとCardのデータベースを作成
    respond_to do |format|
      format.json {
        # require 'payjp'
        Payjp.api_key = ENV["PAYJP_SECRET_ACCESS_KEY"]  
        # current_user.update(token_id: params[:token])
        if current_user.creditCards == []
          response_customer = Payjp::Customer.create(card: params[:token])
          current_user.creditCards.create(token_id: response_customer.id, user_id: current_user.id)
        end
      }
    end

    # if params['payjp-token'].blank?
    #   redirect_to action: "new"
    # else
    #   # トークンが正常に発行されていたら、顧客情報をPAY.JPに登録します。
    #   customer = Payjp::Customer.create(
    #     description: 'test', # 無くてもOK。PAY.JPの顧客情報に表示する概要です。
    #     email: current_user.email,
    #     card: params['payjp-token'], # 直前のnewアクションで発行され、送られてくるトークンをここで顧客に紐付けて永久保存します。
    #     metadata: {user_id: current_user.id} # 無くてもOK。
    #   )
    #   @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
    #   if @card.save
    #     redirect_to action: "index"
    #   else
    #     redirect_to action: "create"
    #   end
    # end
  end

  private

  # def set_card
  #   @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  # end


  def destroy
  end
end
