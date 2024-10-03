class FavouritesController < ApplicationController
  # before_action :set_car
  def index
    @favourites = Favourite.includes(:car).all
  end

  def new
    @favourite = @Favourite.new
  end

  def create
    # @favourite = @car.favourites.new(favourite_params)
    @car = Car.find(params[:car_id])
    @favourite = @car.favourites.new
    if @favourite.save
      redirect_to car_path(@car), notice: "Favourite was successfully created."
    else
      render :new
    end
  end

  def destroy
  end

  private
  # def set_car
  #   @car = Car.find(params[:car_id])
  # end

  # def favourite_params
  #   params.require(:favourite).permit(:comment, :rating)
  # end
end
