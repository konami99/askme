class LikedQuestion < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  before_destroy :decrease_question_attribute_like
  after_create :increase_question_attribute_like

  private
    def increase_question_attribute_like

    end

    def decrease_question_attribute_like

    end
end
