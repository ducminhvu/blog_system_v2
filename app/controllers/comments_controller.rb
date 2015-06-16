class CommentsController < ApplicationController
  def show
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      flash[:success] = "Comment success!"
    else
      flash[:danger] = "Comment fail!"
    end
    redirect_to Entry.find(params[:comment][:entry_id])
  end

  private
    def comment_params
      params.require(:comment).permit(:entry_id, :content)
    end
end
