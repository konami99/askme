class LikedQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :user


  after_create :increase_question_attribute_like

  private
    def increase_question_attribute_like
      s = question.question_attribute.like.nil?
      question.question_attribute.like = (question.question_attribute.like.nil?)? 1 : question.question_attribute.like += 1
      question.question_attribute.save
    end

end
