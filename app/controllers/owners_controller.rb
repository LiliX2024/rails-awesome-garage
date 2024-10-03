class OwnersController < ApplicationController
  def index
    @owners = Owner.all
    @owner = Owner.find(params[:id])
    # @cars = @owner.cars
  end
end
