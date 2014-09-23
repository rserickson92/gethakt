class PostsController < ApplicationController
	before_action :logged_in?
  def index
  	@posts = Post.all
  end

  def create
  end

  def destroy
  end
end
