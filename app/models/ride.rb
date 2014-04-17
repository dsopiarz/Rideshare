class Ride < ActiveRecord::Base
  def self.search(params)
    if params[:arrivelocation].present? || params[:departlocation].present?
      where(["arrivelocation LIKE :aloc OR departlocation LIKE :dloc", { aloc: "%#{params[:arrivelocation]}%", dloc: "%#{params[:departlocation]}%"}])
    else
      all
    end
  end
end
