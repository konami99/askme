require 'rails_helper'

RSpec.describe "liked_questions/show", :type => :view do
  before(:each) do
    @liked_question = assign(:liked_question, LikedQuestion.create!(
      :question => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
