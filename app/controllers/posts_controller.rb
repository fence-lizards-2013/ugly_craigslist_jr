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

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "You have successfully created a new post"
      redirect_to category_post_url(@post.category_id,@post)
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    if @post.save
      flash[:success] = "You have successfully updated your post"
      redirect_to category_post_path(@post)
    else
      render 'edit'
    end
  end
end
