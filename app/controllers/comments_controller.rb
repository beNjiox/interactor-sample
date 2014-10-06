class CommentsController < ApplicationController
  def index
    @comments    = Comment.order(:created_at).page params[:page]
    @new_comment = Comment.new
  end

  def store
    result = AddComment.call(comment_params: comment_params, fake_fail: params[:fake_fail].present?)

    if result.success?
      flash[:notice] = 'Successfully added.'
    else
      flash[:danger] = result.message || 'A terrible error occured while adding a comment.'
    end
    redirect_to :root
  end

  private
  def comment_params
    params.require(:comment).permit(:email, :comment)
  end
end
