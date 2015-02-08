class AddAnswerIdToAnswerAttributes < ActiveRecord::Migration
  def change
    add_column :answer_attributes, :answer_id, :integer
  end
end
