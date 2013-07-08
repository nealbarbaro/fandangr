require 'spec_helper'

describe "showtimes/new" do
  before(:each) do
    assign(:showtime, stub_model(Showtime,
      :movie_id => 1
    ).as_new_record)
  end

  it "renders new showtime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => showtimes_path, :method => "post" do
      assert_select "input#showtime_movie_id", :name => "showtime[movie_id]"
    end
  end
end
