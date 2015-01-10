require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET create" do
    it "stores user_id and username in session" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET destroy" do
    it "remove user_id from session" do
      user = create(:user)
      session[:user_id] = user.id
      get :destroy
      expect(session[:user_id]).to be_nil
    end
  end

end
