require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :price => 1,
      :row => "MyString",
      :seat => "MyString",
      :user_id => 1,
      :showtime_id => 1
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tickets_path, :method => "post" do
      assert_select "input#ticket_price", :name => "ticket[price]"
      assert_select "input#ticket_row", :name => "ticket[row]"
      assert_select "input#ticket_seat", :name => "ticket[seat]"
      assert_select "input#ticket_user_id", :name => "ticket[user_id]"
      assert_select "input#ticket_showtime_id", :name => "ticket[showtime_id]"
    end
  end
end
