class AddQuestionStatusToQuestion < ActiveRecord::Migration
  def change
    add_reference :questions, :question_status, index: true
  end
end
