#home_controller.rb  HomeController
#product.rb Product
class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:profile]

#  def index    #
#  end
#  def profile
#  end
  def backdoor
    session[:current_user] = 10
    redirect_to root_path
  end
end