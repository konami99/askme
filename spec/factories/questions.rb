# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.sentence(word_count=4) }
    content { Faker::Lorem.paragraph }

    after(:build) do |question|
      u = create(:user)
      question.user = u
    end
  end
end
