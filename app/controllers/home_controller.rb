class HomeController < ApplicationController
  def index
    @users = User.limit(12)
  end
end
