class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  belongs_to :question_status
  has_one :question_attribute

  def self.latest
    Question.order(:updated_at).last
  end

  after_create do |question|
    QuestionAttribute.create(question: question)
  end
end
