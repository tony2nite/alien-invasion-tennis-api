require "spec_helper"

describe Api::MatchesController do
  describe "routing" do

    it "routes to #index" do
      get("/api/matches").should route_to("api/matches#index")
    end

    it "routes to #new" do
      get("/api/matches/new").should route_to("api/matches#new")
    end

    it "routes to #show" do
      get("/api/matches/1").should route_to("api/matches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/api/matches/1/edit").should route_to("api/matches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/api/matches").should route_to("api/matches#create")
    end

    it "routes to #update" do
      put("/api/matches/1").should route_to("api/matches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/matches/1").should route_to("api/matches#destroy", :id => "1")
    end

  end
end
