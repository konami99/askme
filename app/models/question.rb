class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  belongs_to :question_status

  def self.latest
    Question.order(:updated_at).last
  end
end
