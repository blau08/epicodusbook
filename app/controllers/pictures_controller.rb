class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

  def index
    @pictures = Picture.all
  end

private
  def picture_params
    params.require(:picture).permit(:title, :image)
  end
end
