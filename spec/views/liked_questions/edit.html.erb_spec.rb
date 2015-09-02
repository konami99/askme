require 'rails_helper'

RSpec.describe "liked_questions/edit", :type => :view do
  before(:each) do
    @liked_question = assign(:liked_question, LikedQuestion.create!(
      :question => nil,
      :user => nil
    ))
  end

  it "renders the edit liked_question form" do
    render

    assert_select "form[action=?][method=?]", liked_question_path(@liked_question), "post" do

      assert_select "input#liked_question_question_id[name=?]", "liked_question[question_id]"

      assert_select "input#liked_question_user_id[name=?]", "liked_question[user_id]"
    end
  end
end
