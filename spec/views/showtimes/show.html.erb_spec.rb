require 'spec_helper'

describe "showtimes/show" do
  before(:each) do
    @showtime = assign(:showtime, stub_model(Showtime,
      :movie_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
