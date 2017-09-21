class CommentsController < ApplicationController
  respond_to :js


  def create
    @post = Post.find(params[:post_id])
    @post.comments.create(comment_params.merge(user: current_user))
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
