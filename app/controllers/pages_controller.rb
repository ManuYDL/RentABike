class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    @bookings = @user.bookings
    @bikes = @user.bikes
  end
end
