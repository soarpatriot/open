require "rails_helper"

RSpec.describe Admin::KeysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/keys").to route_to("admin/keys#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/keys/new").to route_to("admin/keys#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/keys/1").to route_to("admin/keys#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/keys/1/edit").to route_to("admin/keys#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/keys").to route_to("admin/keys#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/keys/1").to route_to("admin/keys#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/keys/1").to route_to("admin/keys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/keys/1").to route_to("admin/keys#destroy", :id => "1")
    end

  end
end
