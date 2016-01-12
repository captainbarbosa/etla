class TripsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trips = current_user.trips
  end

  def new
    @trip = current_user.trips.build
  end

  def create
    @trip = current_user.trips.build create_trip_params

    if @trip.save
      flash[:notice] = "Trip created!"
      redirect_to trip_path(@trip)
    else
      flash.now[:alert] = "An error occurred"
    end
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(create_trip_params)
      redirect_to @trip, flash[:notice] => "Trip edited"
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, :notice => "Trip Deleted"
  end


  private

  def create_trip_params
    params.require(:trip).permit(:name, :start, :end)
  end

end
