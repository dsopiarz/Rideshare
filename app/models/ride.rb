class Ride < ActiveRecord::Base
  def self.search(query)
    if query
      where('arrivelocation LIKE ?', "%#{query}%")
    else
      all
    end
  end
end
