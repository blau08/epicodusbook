class StudentsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @students = Student.all
    @categories = Category.all
    @profiles = Profile.all

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
    @student = Student.find(params[:id])
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

private
  def student_params
    params.require(:student).permit(:name, :quote, :image)
  end
end
