class TripsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trips = current_user.trips
  end

  def new
    @trips = Trip.new
  end

  def create
    @trip = current_user.trips.build create_trip_params

    if @trip.save
      flash[:notice] = "Trip created!"
      redirect_to trip_path(:id)
    else
      flash.now[:alert] = "An error occurred"
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end


  private

  def create_trip_params
    params.require(:trip).permit(:name, :start, :end)
  end

end
