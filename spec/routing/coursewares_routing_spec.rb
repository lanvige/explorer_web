require "spec_helper"

describe CoursewaresController do
  describe "routing" do

    it "routes to #index" do
      get("/coursewares").should route_to("coursewares#index")
    end

    it "routes to #new" do
      get("/coursewares/new").should route_to("coursewares#new")
    end

    it "routes to #show" do
      get("/coursewares/1").should route_to("coursewares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coursewares/1/edit").should route_to("coursewares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coursewares").should route_to("coursewares#create")
    end

    it "routes to #update" do
      put("/coursewares/1").should route_to("coursewares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coursewares/1").should route_to("coursewares#destroy", :id => "1")
    end

  end
end
