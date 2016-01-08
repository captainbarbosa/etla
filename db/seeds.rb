# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Trip.create(
  :name => 'Southwest Road Trip',
  :start => '2016-05-20 19:00:00 -0400',
  :end => '2016-05-31 12:00:00 -0400',
  :user_id => '1')

Trip.create(
  :name => 'Patagonia',
  :start => '2017-01-01 11:00:00 -0400',
  :end => '2017-01-20 12:00:00 -0400',
  :user_id => '1')

Activity.create(
  :name => 'Fly to Las Vegas',
  :date => '2016-05-20 20:23:00 -0400',
  :description => 'Land at McCarran International Airport and pick up rental car',
  :location => 'McCarran International Airport',
  :lat => '36.086010', 
  :long => '-115.153969', 
  :trip_id => '1')

Activity.create(
  :name => 'Explore Valley of Fire State Park',
  :date => '2016-05-20 20:23:00 -0400',
  :description => 'Hike around Valley of Fire State Park for 2-3 hours',
  :location => 'Valley of Fire State Park',
  :lat => '36.4499788', 
  :long => '-114.9054354', 
  :trip_id => '1')

puts 'Preliminary data seeded'

