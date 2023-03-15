class UsersController < ApplicationController
  before_action :set_user, only: %i[ show ]

  def show
    session[:conversations] ||= []

    @users = User.all.where.not(id: @user.id)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
