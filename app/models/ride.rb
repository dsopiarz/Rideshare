class Ride < ActiveRecord::Base
  validates_presence_of :departlocation, :arrivelocation, :departtime, :arrivetime, :seatsavailable, :costperseat

  def set_photo(user)
    self.userphoto = user.img_src
  end

  def checked(params)
    if params
      'Acceptable'
    else
      'Unacceptable'
    end
  end

  def self.search(params)
    if params[:departlocation].present? || params[:arrivelocation].present? || params[:departtime].present?
      query = ""
      if not params[:departlocation].blank?
        query << "departlocation LIKE '%#{params[:departlocation]}%'"
      end
      if not params[:arrivelocation].blank?
        if not query.blank?
          query << " AND "
        end
        query << "arrivelocation LIKE '%#{params[:arrivelocation]}%'"
      end
      if not params[:departtime].blank?
        if not query.blank?
          query << " AND "
        end
        query << "departtime LIKE '%#{params[:departtime]}%'"
      end
        where(query)
    else
      all
    end
  end
end
