class RoomsController < ApplicationController
    before_action :authenticate_user!
  
    def show
      @room = Room.find(params[:id])
      if @room.user == current_user || @room.admin == current_user
        @messages = @room.messages.includes(:user)
        @message = Message.new
      else
        redirect_to root_path, alert: "アクセスできません"
      end
    end
end