class PostsController < ApplicationController
	before_action :check_if_logged_in
  def index
  	@posts = Post.load_all
  end

  def create
  end

  def destroy
  end
end
