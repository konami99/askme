require 'rails_helper'

RSpec.describe "liked_questions/new", :type => :view do
  before(:each) do
    assign(:liked_question, LikedQuestion.new(
      :question => nil,
      :user => nil
    ))
  end

  it "renders new liked_question form" do
    render

    assert_select "form[action=?][method=?]", liked_questions_path, "post" do

      assert_select "input#liked_question_question_id[name=?]", "liked_question[question_id]"

      assert_select "input#liked_question_user_id[name=?]", "liked_question[user_id]"
    end
  end
end
