require 'spec_helper'

describe Showtime do
  it "can be created" do
    showtime = Showtime.new(:date => "02/02/2012", :start_time => "11:00")
    showtime.save

    showtimes = Showtime.all
    expect(showtimes).to include(showtime)
  end

  it "cannot be created without a date" do
    showtime = Showtime.new(:start_time => "11:00")

    expect(showtime.valid?).to be_false
  end

  it "cannot be creted without a start time" do
    showtime = Showtime.new(:date => "02/02/2012")

    expect(showtime.valid?).to be_false
  end
end
