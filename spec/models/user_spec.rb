require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'is invalid without a password_digest'

  it 'is invalid with a duplicate email address' do
    create(:user, email: 'test@gmail.com')
    user = build(:user, email: 'test@gmail.com')
    expect(user).to be_invalid
  end

  it 'is invalid with a duplicate username' do
    create(:user, username: 'konami99')
    user = build(:user, username: 'konami99')
    expect(user).to be_invalid
  end
end
