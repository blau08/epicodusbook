class CommentsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @comment = @student.comments.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @student = Student.find(params[:student_id])
    @comment = Comment.new(comment_params)
    # @comment.user = current_user
    @comment.save
    redirect_to student_path(@student)
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :student_id)
  end
end
