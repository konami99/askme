require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  describe "GET new" do
    it "returns http success"
  end

  describe "GET create" do
    it "stores user_id and username in session" do
      user = create(:user, username: 'etw154', password: 'rails4', password_confirmation: 'rails4')
      post :create, signin_username: user.username, signin_password: user.password
      expect(session[:user_id]).to eq user.id
      expect(session[:username]).to eq user.username
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
