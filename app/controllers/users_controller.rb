class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = Admin.create(customer_params)
    if @user.save!
      redirect_to root_path, notice: 'Sucessfully Signed Up'
    end
  end

  def customer_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :business)
  end

  def show

  end

  def show_user
    if current_user.type == 'Admin'
      puts "-------------------------------Showing Admin user dashboard--------------------------------------"
      # render
    else
      puts "-------------------------------Showing Normal user dashboard--------------------------------------"
    end
  end
end