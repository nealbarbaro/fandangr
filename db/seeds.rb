# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(:name => "Inception")
Movie.create(:name => "The Departed")
Movie.create(:name => "Fight Club")
Movie.create(:name => "The Goonies")
Movie.create(:name => "Avatar")
Movie.create(:name => "Dumb and Dumber")
Movie.create(:name => "Back to the Future")
Movie.create(:name => "Pi")
Movie.create(:name => "Lawrence of Arabia")
Movie.create(:name => "Ben Hur")
Movie.create(:name => "Gone with the Wind")
Movie.create(:name => "Lincoln")
Movie.create(:name => "Argo")
Movie.create(:name => "Prometheus")
Movie.create(:name => "Looper")
Movie.create(:name => "Ted")


movies = Movie.all

movies.each do |movie|
  Showtime.create(:date => "2012/02/02", :start_time => "10:00", :movie_id => movie.id)
  Showtime.create(:date => "2012/02/02", :start_time => "13:00", :movie_id => movie.id)
  Showtime.create(:date => "2012/02/02", :start_time => "16:00", :movie_id => movie.id)
  Showtime.create(:date => "2012/02/02", :start_time => "19:00", :movie_id => movie.id)
end

showtimes = Showtime.all

showtimes.each do |showtime|

  Ticket.create(:price => "10", :row => "1", :seat => "A", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "1", :seat => "B", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "1", :seat => "C", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "1", :seat => "D", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "1", :seat => "E", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "1", :seat => "F", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "A", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "B", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "C", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "D", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "E", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "2", :seat => "F", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "A", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "B", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "C", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "D", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "E", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "3", :seat => "F", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "A", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "B", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "C", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "D", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "E", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "4", :seat => "F", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "5", :seat => "A", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "5", :seat => "C", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "5", :seat => "D", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "5", :seat => "E", :showtime_id => showtime.id )
  Ticket.create(:price => "10", :row => "5", :seat => "F", :showtime_id => showtime.id )

end