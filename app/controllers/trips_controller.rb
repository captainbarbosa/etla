class TripsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trips = current_user.trips
  end

  def new
    @trips = current_user.new
  end

  def create
    @trips = current_user.new(create_params)
  end

  def show
  end


  private

  def create_params
    params.require(:trip).permit(:name)
  end

end
