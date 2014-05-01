class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@student\.cvtc\.edu\z/,
			      message: "must be a CVTC student email account" }

  def img_src
    email_address = self.email.downcase.to_s.strip
    hash = Digest::MD5.hexdigest(email_address.downcase.strip)
    "http://www.gravatar.com/avatar/#{hash}"
  end

end
