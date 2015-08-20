class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_one :answer_attribute
  accepts_nested_attributes_for :answer_attribute
  #validates :answer_attribute, length: { is: 1 }

  after_create do |ans|
    AnswerAttribute.create(answer: ans)
  end
end
