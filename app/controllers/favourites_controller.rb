class FavouritesController < ApplicationController
  # before_action :set_car
  def index
    @favourites = Favourite.all
  end

  # def new
  #   @favourite = @Favourite.new
  # end

  def create
    # @favourite = @car.favourites.new(favourite_params)
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car), notice: "Favourite was successfully created."
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    if @favourite.destroy
      redirect_to favourites_path, notice: "Favourite has been successfully deleted!"
    else
      redirect_to favourites_path, alert: "Favourite could not be deleted."
    end
  end

  # private
  # def set_car
  #   @car = Car.find(params[:car_id])
  # end

  # def favourite_params
  #   params.require(:favourite).permit(:comment, :rating)
  # end
end
