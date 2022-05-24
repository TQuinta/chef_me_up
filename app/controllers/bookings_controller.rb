class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    profile = ChefProfile.find(params[:chef_profile_id])
    @booking.user = current_user
    @booking.chef_profile = profile
    if @booking.save!
      redirect_to bookings_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :duration, :status)
  end
end
