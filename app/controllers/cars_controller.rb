class CarsController < ApplicationController
  def index
    @cars = Car.all
    # @owner = Owner.find(params[:owner_id])
    # @cars = @owner.cars
  end

  def show
    @car = Car.find(params[:id])
    @review = @car.reviews.new
    @favourite = @car.favourites.new
  end
end
