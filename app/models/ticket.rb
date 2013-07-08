class Ticket < ActiveRecord::Base
  belongs_to :showtime
  belongs_to :user

  attr_accessible :price, :row, :seat, :showtime_id, :user_id
  validates :row, :presence => true
  validates :seat, :presence => true


end
