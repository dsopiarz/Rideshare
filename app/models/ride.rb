class Ride < ActiveRecord::Base
  def self.search(params)
    if params[:departlocation].present? && params[:arrivelocation].present? && params[:departtime].present?
      where(["departlocation LIKE :dloc AND arrivelocation LIKE :aloc AND departtime LIKE :dtime", {dloc: "%#{params[:departlocation]}%", aloc: "%#{params[:arrivelocation]}%", dtime: "%#{params[:departtime]}%"}])
	else
	  all
	end
  end
end
