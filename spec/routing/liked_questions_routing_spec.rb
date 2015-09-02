require "rails_helper"

RSpec.describe LikedQuestionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/liked_questions").to route_to("liked_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/liked_questions/new").to route_to("liked_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/liked_questions/1").to route_to("liked_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/liked_questions/1/edit").to route_to("liked_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/liked_questions").to route_to("liked_questions#create")
    end

    it "routes to #update" do
      expect(:put => "/liked_questions/1").to route_to("liked_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/liked_questions/1").to route_to("liked_questions#destroy", :id => "1")
    end

  end
end
