require 'spec_helper'

describe "showtimes/index" do
  before(:each) do
    assign(:showtimes, [
      stub_model(Showtime,
        :movie_id => 1
      ),
      stub_model(Showtime,
        :movie_id => 1
      )
    ])
  end

  it "renders a list of showtimes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
