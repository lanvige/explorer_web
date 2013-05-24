require "spec_helper"

describe ClazzesController do
  describe "routing" do

    it "routes to #index" do
      get("/clazzes").should route_to("clazzes#index")
    end

    it "routes to #new" do
      get("/clazzes/new").should route_to("clazzes#new")
    end

    it "routes to #show" do
      get("/clazzes/1").should route_to("clazzes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/clazzes/1/edit").should route_to("clazzes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/clazzes").should route_to("clazzes#create")
    end

    it "routes to #update" do
      put("/clazzes/1").should route_to("clazzes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/clazzes/1").should route_to("clazzes#destroy", :id => "1")
    end

  end
end
