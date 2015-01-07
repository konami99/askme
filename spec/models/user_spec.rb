require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'is invalid without a password_digest'

  it 'is invalid with a duplicate email address'

  it 'is invalid with a duplicate username'
end
