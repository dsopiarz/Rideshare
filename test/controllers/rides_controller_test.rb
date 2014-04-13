require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  setup do
    @ride = rides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post :create, ride: { arrivelocation: @ride.arrivelocation, arrivetime: @ride.arrivetime, costperseat: @ride.costperseat, departlocation: @ride.departlocation, departtime: @ride.departtime, preferences: @ride.preferences, seatsavailable: @ride.seatsavailable }
    end

    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should show ride" do
    get :show, id: @ride
    assert_response :success
  end
  
    test "should show ride" do
    get :show, arrivelocation: @ride
    assert_response :success
  end
  
    test "should show ride" do
    get :show, arrivetime: @ride
    assert_response :success
  end
  
    test "should show ride" do
    get :show, departtime: @ride
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ride
    assert_response :success
  end

  test "should update ride" do
    patch :update, id: @ride, ride: { arrivelocation: @ride.arrivelocation, arrivetime: @ride.arrivetime, costperseat: @ride.costperseat, departlocation: @ride.departlocation, departtime: @ride.departtime, preferences: @ride.preferences, seatsavailable: @ride.seatsavailable }
    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete :destroy, id: @ride
    end

    assert_redirected_to rides_path
  end
end
