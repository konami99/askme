class AddHasBestAnswerToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :has_best_answer, :binary
  end
end
