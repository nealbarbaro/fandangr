# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  price       :integer
#  row         :string(255)
#  seat        :string(255)
#  user_id     :integer
#  showtime_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ticket < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :user

  attr_accessible :price, :row, :seat, :showtime_id, :user_id
  validates :row, :presence => true
  validates :seat, :presence => true


end
