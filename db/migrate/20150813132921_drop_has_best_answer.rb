class DropHasBestAnswer < ActiveRecord::Migration
  def change
    remove_column :questions, :has_best_answer
  end
end
