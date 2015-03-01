require 'rails_helper'

RSpec.describe "liked_answers/edit", :type => :view do
  before(:each) do
    @liked_answer = assign(:liked_answer, LikedAnswer.create!(
      :answer => nil,
      :user => nil
    ))
  end

  it "renders the edit liked_answer form" do
    render

    assert_select "form[action=?][method=?]", liked_answer_path(@liked_answer), "post" do

      assert_select "input#liked_answer_answer_id[name=?]", "liked_answer[answer_id]"

      assert_select "input#liked_answer_user_id[name=?]", "liked_answer[user_id]"
    end
  end
end
