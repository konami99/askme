require 'rails_helper'

RSpec.describe "liked_answers/new", :type => :view do
  before(:each) do
    assign(:liked_answer, LikedAnswer.new(
      :answer => nil,
      :user => nil
    ))
  end

  it "renders new liked_answer form" do
    render

    assert_select "form[action=?][method=?]", liked_answers_path, "post" do

      assert_select "input#liked_answer_answer_id[name=?]", "liked_answer[answer_id]"

      assert_select "input#liked_answer_user_id[name=?]", "liked_answer[user_id]"
    end
  end
end
