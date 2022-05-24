class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    raise
  end
end
