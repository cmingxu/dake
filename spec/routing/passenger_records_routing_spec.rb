require "spec_helper"

describe PassengerRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/passenger_records").should route_to("passenger_records#index")
    end

    it "routes to #new" do
      get("/passenger_records/new").should route_to("passenger_records#new")
    end

    it "routes to #show" do
      get("/passenger_records/1").should route_to("passenger_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/passenger_records/1/edit").should route_to("passenger_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/passenger_records").should route_to("passenger_records#create")
    end

    it "routes to #update" do
      put("/passenger_records/1").should route_to("passenger_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/passenger_records/1").should route_to("passenger_records#destroy", :id => "1")
    end

  end
end
