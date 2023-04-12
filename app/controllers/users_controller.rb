class UsersController < ApplicationController

  def new

  end

  def create
    # check_for_acceptance
    user = User.create(user_params)
    # if user.save
      #verification email
      session[:user_id] = user.id
      require 'pry'; binding.pry
      redirect_to root_path
      flash[:notice] = "Please check you email for verification!"
    # elsif params[:password] != params[:password_confirmation]
    #   flash[:notice] = "Passwords must match!"
    # end
  end

  def show

  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  # def check_for_acceptance
  #   if params[:terms_of_service] != "1"
  #     flash[:notice] = "You must accept our Terms & Conditions!"
  #     redirect_to new_user_path
  #   end
  # end
end