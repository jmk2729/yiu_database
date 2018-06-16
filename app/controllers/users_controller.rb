class UsersController < ApplicationController
  def new
  end
  
  def create
    User.create(name: params[:user_name],
                 email: params[:user_email],
                 password: params[:user_password],
                 password_confirmation: params[:user_password_confirmation],
                 phone_number: params[:user_phone_number],
                 address: params[:user_address],
                 birth: params[:user_birth]
                 )
                 
    redirect_to '/homes/index'
  end
end