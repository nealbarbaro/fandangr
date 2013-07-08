class User < ActiveRecord::Base
  has_secure_password

  has_many :seats
  has_many :showtimes, :through => :seats

  attr_accessible :email, :is_admin, :password_digest
  validates :email, :uniqueness => true
  validates :email, :format => /@/

end
