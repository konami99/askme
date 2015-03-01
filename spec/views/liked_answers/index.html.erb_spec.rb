require 'rails_helper'

RSpec.describe "liked_answers/index", :type => :view do
  before(:each) do
    assign(:liked_answers, [
      LikedAnswer.create!(
        :answer => nil,
        :user => nil
      ),
      LikedAnswer.create!(
        :answer => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of liked_answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
