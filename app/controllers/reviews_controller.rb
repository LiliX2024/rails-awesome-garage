class ReviewsController < ApplicationController
  before_action :set_car

  # def index
  #   @reviews = @car.reviews.all
  # end

  # def show
  #   @review = @car.reviews.find(params[:id])
  # end

  def new
    @car = Car.find(params[:car_id])
    @review = @car.reviews.new
  end

  def create
    @car = Car.find(params[:car_id])
    @review = @car.reviews.new(review_params)
    if @review.save
      redirect_to car_path(@car), notice: "Review was successfully created."
    else
      render :new
    end
  end

  def destroy
  end

  private
  def set_car
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
