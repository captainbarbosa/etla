class Activity < ActiveRecord::Base
  belongs_to :trips

  # def get_lat_lng
  #   # Call Google API here
  #   {lat: google_response[:lat], lng: google_response[:lng]}
  # end
end
