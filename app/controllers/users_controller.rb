class UsersController < ApplicationController
  before_action :check_if_already_logged_in
  def new
  	@user = User.new
  end

  def create
  	params = user_params
  	@user = User.new(name: params[:name], password: params[:password])
  	if (params[:password] == params[:repeat_password]) && @user.save
  		redirect_to root_url
  	else
  		redirect_to new_user_path
  	end
  end

  def destroy
  end

  private

  def user_params
  	params.require(:user).permit(:name, :password, :repeat_password)
  end
end
