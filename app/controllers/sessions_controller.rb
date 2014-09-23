class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	params = session_params
  	user = User.authenticate(params[:name], params[:password])
  	if user
  	  session[:user_id] = user.id 
  		redirect_to posts_path
  	else
  		redirect_to root_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path
  end

  private

  def session_params
  	params.require(:user).permit(:name, :password)
  end
end
