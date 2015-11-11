class StudentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    if params[:search]
      @students_search = Student.search(params[:search])
      @categories_search = Category.search(params[:search])
      @comments_search = Comment.search(params[:search])
    end

    @students = Student.all
    @categories = Category.all
    @profiles = Profile.all

    respond_to do |format|
      format.html
      format.js
    end

    if user_signed_in?
      if current_user.profile == nil
        @profile = Profile.new
      else
        @profile = current_user.profile
      end
    else
      @profile = nil
    end
  end



  def show
    @students = Student.all
    @student = Student.find(params[:id])
    @from = @student
    @comment = Comment.new
    @comments = @student.comments
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end

  def upvote
    @student = Student.find(params[:id])
    @student.upvote_by current_user
    redirect_to categories_path
  end

private
  def student_params
    params.require(:student).permit(:name, :quote, :facebook, :linkedin, :github, :other, :image)
  end
end
