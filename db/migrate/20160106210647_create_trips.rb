class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
