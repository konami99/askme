require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it 'has one answer_attribute' do
    expect(create(:answer).answer_attributes.count).to eq 1
  end
end
