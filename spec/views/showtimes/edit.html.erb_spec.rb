require 'spec_helper'

describe "showtimes/edit" do
  before(:each) do
    @showtime = assign(:showtime, stub_model(Showtime,
      :movie_id => 1
    ))
  end

  it "renders the edit showtime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showtimes_path(@showtime), :method => "post" do
      assert_select "input#showtime_movie_id", :name => "showtime[movie_id]"
    end
  end
end
