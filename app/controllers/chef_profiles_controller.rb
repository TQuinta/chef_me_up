class ChefProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @profiles = ChefProfile.all
  end

  def new
    @profile = ChefProfile.new
  end

  def create
    @profile = ChefProfile.new(profile_params)
    @profile.user = current_user
    if @profile.save!
      redirect_to chef_profile_path(@profile)
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:chef_profile).permit(:title, :description, :category)
  end
end
