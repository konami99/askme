class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :answer_attributes
  accepts_nested_attributes_for :answer_attributes
  validates :answer_attributes, length: { is: 1 }
end
