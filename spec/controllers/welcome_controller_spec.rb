require 'spec_helper'
require 'rails_helper'

describe WelcomeController do
  describe 'GET #index' do
    it 'assigns questions to @questions' do
      q1 = create(:question)
      q2 = create(:question)
      q3 = create(:question)
      get :index
      expect(assigns(:questions)).to match_array [q1,q2,q3]
    end
  end
end