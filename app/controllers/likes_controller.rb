class LikesController < ApplicationController
  def create
    @user = current_user
    @post = params[:post_id]
    @like = Like.new
    @like.author_id = @user.id
    @like.post_id = @post
    Rails.logger.debug("My like: #{@like.inspect}")
    @like.save
    redirect_to user_post_likes_path(@user, @post)
  end
end
