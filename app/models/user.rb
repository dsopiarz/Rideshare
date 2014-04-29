class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
		 
  def self.search(params)
    if params[:email].present?
	  where("email LIKE '%#{params[:email]}%'")
	end
  end
end
