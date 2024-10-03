class CarsController < ApplicationController
  def index
    @cars = Car.all
    # @owner = Owner.find(params[:owner_id])
    # @cars = @owner.cars
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    # @review = @car.reviews.new
    @favourite = Favourite.new
  end
end
