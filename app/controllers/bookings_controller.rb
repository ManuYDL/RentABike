class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.starting_date = @booking.date_range.split(" to ")[0]
    @booking.ending_date = @booking.date_range.split(" to ")[1]
    @booking.user = current_user
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    if @booking.save!
      redirect_to bike_path(@bike), notice: "Acceptée"
    else
      render 'bikes/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date_range)
  end

end
