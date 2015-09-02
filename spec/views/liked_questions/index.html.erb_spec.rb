require 'rails_helper'

RSpec.describe "liked_questions/index", :type => :view do
  before(:each) do
    assign(:liked_questions, [
      LikedQuestion.create!(
        :question => nil,
        :user => nil
      ),
      LikedQuestion.create!(
        :question => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of liked_questions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
