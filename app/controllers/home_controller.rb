class HomeController < ApplicationController
  def start
    @user = User.new
  end
end