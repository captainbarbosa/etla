class AddTripsRefToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :trip, index: true, foreign_key: true
  end
end
