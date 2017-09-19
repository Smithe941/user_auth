class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @comment.user = current_user
  end
end
