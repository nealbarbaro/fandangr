class Showtime < ActiveRecord::Base
  attr_accessible :date, :movie_id, :start_time

  belongs_to :movie
  has_many :tickets
  has_many :users, :through => :seats

  validates :date, :presence => true
  validates :start_time, :presence => true
  validates :movie_id, :presence => true
end
