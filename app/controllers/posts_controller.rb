class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:post_id])
    @comments = Comment.where post: @post
    @user = current_user
  end

  def new
    @post = Post.new
    @user = current_user
  end

end
