class AddAnswerIdToAnswerattribute < ActiveRecord::Migration
  def change
    add_column :answer_attributes, :like, :integer
  end
end
