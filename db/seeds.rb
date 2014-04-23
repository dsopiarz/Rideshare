# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ride.create(departlocation: 'Menomonie', arrivelocation: 'Eau Claire', departtime: DateTime.new(2014,8,1,4), arrivetime: DateTime.new(2014,8,1,5), seatsavailable: '2', costperseat: '5', preferences: 'No Smoking', smoking: false, children: false)
Ride.create(departlocation: 'Eau Claire', arrivelocation: 'Minneapolis', departtime: DateTime.new(2014,8,2,4), arrivetime: DateTime.new(2014,8,2,6), seatsavailable: '3', costperseat: '10', preferences: 'No Children', smoking: true, children: false)
Ride.create(departlocation: 'Altoona', arrivelocation: 'Eau Claire', departtime: DateTime.new(2014,8,4,4), arrivetime: DateTime.new(2014,8,4,5), seatsavailable: '2', costperseat: '0', preferences: 'No Food', smoking: false, children: true)
Ride.create(departlocation: 'Menomonie', arrivelocation: 'Green Bay', departtime: DateTime.new(2014,8,1,2), arrivetime: DateTime.new(2014,8,1,6), seatsavailable: '4', costperseat: '15', preferences: 'No Smoking, No Food', smoking: true, children: true)
Ride.create(departlocation: 'Hudson', arrivelocation: 'Eau Claire', departtime: DateTime.new(2014,8,1,4), arrivetime: DateTime.new(2014,8,1,5), seatsavailable: '1', costperseat: '10', preferences: 'Smoking, Food is OK', smoking: false, children: false)
