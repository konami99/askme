require 'rails_helper'

RSpec.describe AnswerAttributesController, :type => :controller do
  before(:each) do
    @user = create(:user)
    session[:user_id] = @user.id
    session[:username] = @user.username
  end

  describe 'PUT #update' do
    context 'with valid attributes' do
      it 'update like count' do
        request.accept = "application/json"
        answer = create(:answer)
        expect{
          put :update, answer_id: answer, id:answer.answer_attribute.id
        }.to change(LikedAnswer, :count).by(1)
      end
    end
  end

end