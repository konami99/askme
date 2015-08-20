# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    content { Faker::Lorem.paragraph }

    #after(:build) do |answer|
    #  answer.user = build(:user)
    #  answer.answer_attribute = create(:answer_attribute, answer: answer)
    #end
  end
end
