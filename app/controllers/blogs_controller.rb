class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  def index
    @blogs = Blog.all
  end

  def show
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:name, :title, :blog)
  end
end
