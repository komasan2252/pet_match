class MessagesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_animal
  
    def create
      @animal = Animal.find(params[:animal_id])
      @message = @animal.messages.build(message_params)
      @message.user = current_user
      if @message.save
        redirect_to @animal, notice: "メッセージを送信しました"
      else
        redirect_to @animal, alert: "送信できませんでした"
      end
    end
  
    private
  
    def set_animal
      @animal = Animal.find(params[:animal_id])
    end
  
    def message_params
      params.require(:message).permit(:content)
    end
end
