class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.text :location
      t.decimal :lat
      t.decimal :long

      t.timestamps null: false
    end
  end
end
