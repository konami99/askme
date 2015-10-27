class DislikedQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  after_create :decrease_question_attribute_like
  private
    def decrease_question_attribute_like
      question.question_attribute.like = (question.question_attribute.like.nil?)? -1 : question.question_attribute.like -= 1
      question.question_attribute.save
    end
end
