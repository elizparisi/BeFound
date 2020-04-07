class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :recommendation_id)
  end
end
