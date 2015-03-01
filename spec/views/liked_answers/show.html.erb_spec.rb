require 'rails_helper'

RSpec.describe "liked_answers/show", :type => :view do
  before(:each) do
    @liked_answer = assign(:liked_answer, LikedAnswer.create!(
      :answer => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
