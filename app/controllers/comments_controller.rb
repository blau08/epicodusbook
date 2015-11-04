class CommentsController < ApplicationController
  def new
    if params.has_key?(:student_id)
      @profile_comment = false
      @student = Student.find(params[:student_id])
      @comment = @student.comments.new

      @from = @student
    else
      @profile_comment = true
      @profile = Profile.find(params[:profile_id])
      @comment = @profile.comments.new

      @from = @profile
    end
      respond_to do |format|
        format.html
        format.js
      end
  end

  def create
    if params.has_key?(:student_id)
      @student = Student.find(params[:student_id])
      @comment = Comment.new(comment_params)
      # @comment.user = current_user
      @comment.student = @student
      @comment.save
      respond_to do |format|
        format.html {redirect_to student_path(@student)}
        format.js
      end
    else
      @profile = Profile.find(params[:profile_id])
      @comment = Comment.new(comment_params)
      # @comment.user = current_user
      @comment.profile = @profile
      @comment.save
      respond_to do |format|
        format.html {redirect_to profile_path(@profile)}
        format.js
      end
    end
  end

private
  def comment_params
    params.require(:comment).permit(:comment, :profile_id)
  end
end
