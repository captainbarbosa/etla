class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = current_user.activities
  end

  def new
    @activities = Activity.new
  end

  def create
    @activity = current_user.activities.build create_activity_params
  end

  def show
    @activity = Activity.find(params[:id])
  end


  private

  def create_activity_params
    params.require(:activity).permit(:name)
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
