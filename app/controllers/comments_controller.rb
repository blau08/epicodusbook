class CommentsController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @comment = @student.comments.new
  end
end
