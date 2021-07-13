class HomeController < ApplicationController
  def index
    @user = user_signed_in? ? current_user.email : 'Guest'
  end
end
