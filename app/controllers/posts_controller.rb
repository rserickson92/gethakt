class PostsController < ApplicationController
	before_action :check_if_logged_in
  def index
  	@posts = Post.load_all
  	@post = Post.new
  end

  def create
  	post = Post.create(text: post_params[:text], user_id: current_user.id)
    redirect_to posts_path
  end

  def destroy
  end

  private

  def post_params
  	params.require(:post).permit(:text)
  end
end
