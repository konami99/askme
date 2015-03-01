# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer_attribute do
    like { Faker::Number.number(3) }
    association :answer
  end
end
