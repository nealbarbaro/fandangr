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

require 'spec_helper'

describe Ticket do

  it "can be created" do
    ticket = Ticket.new(:row => "2", :seat => "F")
    ticket.save

    tickets = Seat.all
    expect(tickets).to include(ticket)
  end

  it " can be created without a seat and only row" do
    ticket = Ticket.new(:row => "1")

    expect(ticket.valid?).to be_false
  end

  it "can be created with a seat but no row" do
    ticket = Ticket.new(:row => "B")

    expect(ticket.valid?).to be_false
  end

end
