class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

end
