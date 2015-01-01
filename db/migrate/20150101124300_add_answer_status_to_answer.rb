class AddAnswerStatusToAnswer < ActiveRecord::Migration
  def change
    add_reference :answers, :answer_status, index: true
  end
end
