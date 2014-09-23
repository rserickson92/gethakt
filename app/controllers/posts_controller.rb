class PostsController < ApplicationController
	before_action :logged_in?
  def index
  	@posts = Post.load_all
  end

  def create
  end

  def destroy
  end
end
