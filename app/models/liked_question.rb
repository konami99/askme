class LikedQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  before_destroy :decrease_question_attribute_like
  after_create :increase_question_attribute_like

  private
    def increase_question_attribute_like
      s = question.question_attribute.like.nil?
      question.question_attribute.like = (question.question_attribute.like.nil?)? 1 : question.question_attribute.like += 1
      question.question_attribute.save
    end

    def decrease_question_attribute_like
      question.question_attribute.like = (question.question_attribute.like.nil?)? 1 : question.question_attribute.like -= 1
      question.question_attribute.save
    end
end
