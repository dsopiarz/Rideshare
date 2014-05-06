class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@student\.cvtc\.edu\z/,
            message: "must be a CVTC student email account" }

  def self.search(params)
    if params[:email].present?
      where("email LIKE '%#{params[:email]}%'")
    else
      all
    end
  end
  
  def checked(params)
    if params
      'Active'
    else
      'Disabled'
    end
  end
  
  def check(params)
    if params
      'Disabled'
    else
      'Active'
    end
  end
  
  def disableAccount
    self.disabled = true
    save
  end
  
  def activateAccount
    self.disabled = false
    save
  end

  def img_src
    email_address = self.email.downcase.to_s.strip
    hash = Digest::MD5.hexdigest(email_address.downcase.strip)
    "http://www.gravatar.com/avatar/#{hash}"
  end
end