class MessagesController < ApplicationController
  before_action :set_user, only: :create

  def create
    @conversation = Conversation.includes(:recipient).find(params[:conversation_id])
    @message = @conversation.messages.create(message_params)

    respond_to do |format|
      format.js
    end
  end

  private

  def set_user
    @user = User.find(params[:message][:user_id])
  end

  def message_params
    params.require(:message).permit(:user_id, :body)
  end
end
