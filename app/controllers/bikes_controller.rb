class BikesController < ApplicationController
  before_action set_user, only: ["new", "create"]

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
    @bike.user = @user
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = @user
    if @bike.save
      redirect_to user_path(@user) #user_path?
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def bike_params
    params.require(:bike).permit(:color, :price)
  end
end
