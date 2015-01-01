# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.sentence(word_count=50) }
    content { Faker::Lorem.paragraph }
  end
end
