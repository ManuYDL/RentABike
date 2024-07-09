class BikesController < ApplicationController
  #before_action :set_user, only: %i[new create show edit update]

  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
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

  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    @bike = Bike.find(params[:id])
    if @bike.update(bike_params)
      redirect_to bike_path(@bike)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def bike_params
    params.require(:bike).permit(:color, :price)
  end
end
