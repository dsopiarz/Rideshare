class RidesController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index, :results]
  before_action :set_ride, only: [:show, :edit, :update, :destroy]

  # GET /rides
  # GET /rides.json
  def results
    if user_signed_in?
      if current_user.disabled?
        redirect_to root_url, :notice => "Sorry, your account has been disabled. Please contact an Administrator at admin@Rideshare.com"
      else
        @rides = Ride.search(params)
      end
    else
      @rides = Ride.search(params)
    end
  end

  # GET /rides/1
  # GET /rides/1.json
  def show
  end

  # GET /rides/new
  def new
    if current_user.disabled?
	  redirect_to root_url, :notice => "Sorry, your account has bee disabled. Please contact an Administrator at admin@Rideshare.com"
	else
      @ride = Ride.new
	end
  end

  # GET /rides/1/edit
  def edit
  end

  # POST /rides
  # POST /rides.json
  def create
    @ride = Ride.new(ride_params)
    
    @ride.set_photo(current_user)

    respond_to do |format|
      if @ride.save
        format.html { redirect_to @ride, notice: 'Ride was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ride }
      else
        format.html { render action: 'new' }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rides/1
  # PATCH/PUT /rides/1.json
  def update
    @ride.set_photo(current_user)

    respond_to do |format|
      if @ride.update(ride_params)
        format.html { redirect_to @ride, notice: 'Ride was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ride.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rides/1
  # DELETE /rides/1.json
  def destroy
    @ride.destroy
    respond_to do |format|
      format.html { redirect_to rides_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ride
      @ride = Ride.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ride_params
      params.require(:ride).permit(:departlocation, :arrivelocation, :departtime, :arrivetime, :seatsavailable, :costperseat, :smoking, :children, :preferences, :user_id, :userphoto)
    end
end
