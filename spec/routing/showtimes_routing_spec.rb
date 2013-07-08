require "spec_helper"

describe ShowtimesController do
  describe "routing" do

    it "routes to #index" do
      get("/showtimes").should route_to("showtimes#index")
    end

    it "routes to #new" do
      get("/showtimes/new").should route_to("showtimes#new")
    end

    it "routes to #show" do
      get("/showtimes/1").should route_to("showtimes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/showtimes/1/edit").should route_to("showtimes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/showtimes").should route_to("showtimes#create")
    end

    it "routes to #update" do
      put("/showtimes/1").should route_to("showtimes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/showtimes/1").should route_to("showtimes#destroy", :id => "1")
    end

  end
end
