class ConversationsController < ApplicationController
  before_action :set_user, only: :create

  def create
    @conversation = Conversation.search_conversation(@user.id, params[:recipient_id])

    add_to_conversations unless conversated?

    respond_to do |format|
      format.js
    end
  end

  private

  def set_user
    @user = User.find(params[:sender_id])
  end

  def add_to_conversations
    session[:conversations][0] = @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end
end