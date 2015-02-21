require 'rails_helper'

RSpec.describe Answer, :type => :model do
  it 'has one answer_attribute' do
    expect(create(:answer).answer_attribute).to_not be_nil
  end
end
