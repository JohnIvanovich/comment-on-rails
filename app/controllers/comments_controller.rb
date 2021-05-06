class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @comments = @comments.search(search_param) if search_param
    @comments = @comments.order(created_at: :desc)
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to '/?success=OK'
    else
      redirect_to '/?success=ERROR'
    end
  end

  def new
    @comment = Comment.new
  end

  private
  def comment_create_result
    if params[:success] == 'OK'
      render partial: 'success'
    elsif params[:success] == 'ERROR'
      render partial: 'error'
    end
  end

  helper_method :comment_create_result

  def comment_params
    params.require(:comment).permit(:author, :address, :body)
  end

  def search_param
    params.permit(:q)[:q]
  end

  helper_method :search_param
end
