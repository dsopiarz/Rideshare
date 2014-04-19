class Ride < ActiveRecord::Base
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
