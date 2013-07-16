class PostsController < ApplicationController

  def index
    @posts = Post.all
    @category = Category.find(params[:category_id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all
  end
end
