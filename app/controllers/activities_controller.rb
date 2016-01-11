class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = current_user.activities
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @activity = Activity.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @activity = @trip.activities.build(create_activity_params)

    if @activity.save
      flash[:notice] = "Activity created!"
      redirect_to trip_path(@trip)
    else
      flash.now[:alert] = "An error occurred"
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    if @activity.update(create_activity_params)
      redirect_to @activity, :notice => "Activity edited"
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @activity = @trip.activities.find(params[:id])
    @activity.destroy
    redirect_to @trip, :notice => "Activity Deleted"
  end


  private

  def create_activity_params
    params.require(:activity).permit(:name, :date, :description, :location)
  end
  # def create
  #   activity = Activity.new(activity_params)
  #   google_response = activity.get_lat_lng
  #   activity.lat = google_response[:lat]
  #   activity.lng = google_response[:lng]

  #   if activity.save
  #     # redirect to wherever
  #   else
  #     render :new
  #   end
  # end
end
