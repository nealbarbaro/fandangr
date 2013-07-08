# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :seats
  has_many :showtimes, :through => :seats

  attr_accessible :email, :is_admin, :password_digest
  validates :email, :uniqueness => true
  validates :email, :format => /@/

end
