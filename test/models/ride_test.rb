require 'test_helper'

class RideTest < ActiveSupport::TestCase
  test "the truth" do
    foo_ride = Ride.create(:arrivelocation => "d", :departlocation => "a")
    rides = Ride.search(:arrivelocation => "d", :departlocation => "a")
    assert rides.include? foo_ride
  end
end
