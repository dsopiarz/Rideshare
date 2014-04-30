class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
		 
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@student\.cvtc\.edu\z/,
			      message: "must be a CVTC student email" }

  def self.search(params)
    if params[:email].present?
	  where("email LIKE '%#{params[:email]}%'")
	end
  end
end
