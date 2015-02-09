# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    content { Faker::Lorem.paragraph }

    after(:build) do |answer|
      answer.user = build(:user)
      aa = create(:answer_attribute, answer: answer)
      answer.answer_attributes << aa
    end
  end
end
