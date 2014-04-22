require 'test_helper'

class RideTest < ActiveSupport::TestCase
  test "creates a valid record" do
    ride = Ride.new
    ride.departlocation = "Eau Claire"
    ride.arrivelocation = "Altoona"
    ride.departtime = 2014,8,1,5
    ride.arrivetime = 2014,9,1,5
    ride.seatsavailable = 2
    ride.costperseat = 2.5
	assert ride.save
  end
  
  test "should not save unless departlocation is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:departlocation].include?("can't be blank")
  end
  
  test "should not save unless arrivelocation is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:arrivelocation].include?("can't be blank")
  end
  
  test "should not save unless departtime is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:departtime].include?("can't be blank")
  end
  
  test "should not save unless arrivetime is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:arrivetime].include?("can't be blank")
  end
  
  test "should not save unless seatsavailable is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:seatsavailable].include?("can't be blank")
  end
  
  test "should not save unless costperseat is filled in" do
    ride = Ride.new
	assert !ride.save # save should fails because there are errors.
	assert recipe.errors[:costperseat].include?("can't be blank")
  end
  
end
