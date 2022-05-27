class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def my_bookings
    @my_bookings = Booking.where(chef_profile: current_user.chef_profile)
    authorize @my_bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    profile = ChefProfile.find(params[:chef_profile_id])
    @booking.user = current_user
    @booking.chef_profile = profile
    @booking.total_price = (@booking.duration - @booking.date) * profile.price
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    authorize @booking
    redirect_to my_bookings_path
  end

  def reject
    @booking = Booking.find(params[:booking_id])
    @booking.status = "rejected"
    @booking.save
    authorize @booking
    redirect_to my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :duration, :status, :total_price)
  end
end
