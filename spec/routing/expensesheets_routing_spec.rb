require "spec_helper"

describe ExpensesheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/expensesheets").should route_to("expensesheets#index")
    end

    it "routes to #new" do
      get("/expensesheets/new").should route_to("expensesheets#new")
    end

    it "routes to #show" do
      get("/expensesheets/1").should route_to("expensesheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/expensesheets/1/edit").should route_to("expensesheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/expensesheets").should route_to("expensesheets#create")
    end

    it "routes to #update" do
      put("/expensesheets/1").should route_to("expensesheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/expensesheets/1").should route_to("expensesheets#destroy", :id => "1")
    end

  end
end
