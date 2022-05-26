class ChefProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_profile, only: [:show]

  def index
    if params[:query].present?
      @profiles = policy_scope(ChefProfile).search_by_title_and_description_and_category(params[:query])
    else
      @profiles = policy_scope(ChefProfile).order(created_at: :desc)
    end
    @profiles = @profiles.select { |profile| profile.available?(params[:date], params[:duration]) }
  end

  def show
    authorize @profile
    @booking = Booking.new
  end

  def new
    @profile = ChefProfile.new
    authorize @profile
  end

  def create
    @profile = ChefProfile.new(profile_params)
    authorize @profile
    @profile.user = current_user
    if @profile.save!
      redirect_to chef_profile_path(@profile)
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:chef_profile).permit(:title, :description, :category, :photo, :price)
  end

  def set_profile
    @profile = ChefProfile.find(params[:id])
  end
end
