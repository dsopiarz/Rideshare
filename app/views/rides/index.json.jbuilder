json.array!(@rides) do |ride|
  json.extract! ride, :id, :departlocation, :arrivelocation, :departtime, :arrivetime, :seatsavailable, :costperseat, :preferences
  json.url ride_url(ride, format: :json)
end
