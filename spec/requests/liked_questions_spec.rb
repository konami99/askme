require 'rails_helper'

RSpec.describe "LikedQuestions", :type => :request do
  describe "GET /liked_questions" do
    it "works! (now write some real specs)" do
      get liked_questions_path
      expect(response).to have_http_status(200)
    end
  end
end
