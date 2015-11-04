class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @user = current_user
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    if @profile.save
      redirect_to user_profile_path(current_user, @profile)
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    @user = current_user
  end

  def update
    @profile = Profile.find(params[:id])
    
    if @profile.update(profile_params)
      redirect_to user_profile_path(current_user, @profile)
    else
      render :edit
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end



  private
  def profile_params
    params.require(:profile).permit(:name, :quote, :image)
  end
end
