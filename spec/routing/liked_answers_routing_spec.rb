require "rails_helper"

RSpec.describe LikedAnswersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liked_answers").to route_to("liked_answers#index")
    end

    it "routes to #new" do
      expect(:get => "/liked_answers/new").to route_to("liked_answers#new")
    end

    it "routes to #show" do
      expect(:get => "/liked_answers/1").to route_to("liked_answers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liked_answers/1/edit").to route_to("liked_answers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liked_answers").to route_to("liked_answers#create")
    end

    it "routes to #update" do
      expect(:put => "/liked_answers/1").to route_to("liked_answers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liked_answers/1").to route_to("liked_answers#destroy", :id => "1")
    end

  end
end
