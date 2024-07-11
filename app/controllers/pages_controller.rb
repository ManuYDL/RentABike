class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings = Booking.all
  end
end
