class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  def show
    @students = Student.all
  end

  def upvote
    @category = Category.find(params[:id])
    @category.upvote_by current_user
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name, :quote, :image)
    end
end
