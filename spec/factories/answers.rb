# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    content { Faker::Lorem.paragraph }

    after(:build) do |answer|
      answer.user = build(:user)
      answer_attribute = create(:answer_attribute, answer: answer)
      answer.answer_attribute = answer_attribute
    end
  end
end
