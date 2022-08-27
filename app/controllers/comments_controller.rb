class CommentsController < ApplicationController
  def new
    @user = current_user
    @post = Post.find(params['post_id'])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(text: comment_params[:text], author_id: params[:user_id], post_id: params[:post_id])
    @comment.save
    redirect_to user_post_path(params['user_id'], params['post_id'])
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
