class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all.order('count desc')
    @dresses = Dress.all.order('count desc')
    @friends = Friend.all.order('count desc')
  end

  def create
    @category = Category.new({:name => params['name'], :quote => params['quote'], :image => params['image']})
    if @category.save
    end
    @dress = Dress.new({:name => params['name2'], :quote => params['quote2'], :image => params['image2']})
    if @dress.save
    end
    @friend = Friend.new({:name => params['name3'], :quote => params['quote3'], :image => params['image3']})
    if @friend.save
    end
      redirect_to categories_path
  end

  def show
    @students = Student.all
  end

  def upvote
    @category = Category.find(params[:id])
    @category.upvote_by current_user
    redirect_to categories_path
  end

  def upcount
    @category = Category.find(params[:id])
    @category.upcount
    @category.save
    redirect_to categories_path
  end

  def upcount2
    @dress = Dress.find(params[:id])
    @dress.upcount
    @dress.save
    redirect_to categories_path
  end

  def upcount3
    @friend = Friend.find(params[:id])
    @friend.upcount
    @friend.save
    redirect_to categories_path
  end

  # private
  #   def category_params
  #     params.require(:category).permit(:name, :quote, :image)
  #   end
end
