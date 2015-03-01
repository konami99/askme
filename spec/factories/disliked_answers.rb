# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :disliked_answer do
    answer = create(:answer)
    user = create(:user)
  end
end
