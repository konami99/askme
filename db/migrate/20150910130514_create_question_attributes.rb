class CreateQuestionAttributes < ActiveRecord::Migration
  def change
    create_table :question_attributes do |t|
      t.belongs_to :question, index: true
      t.integer :like

      t.timestamps
    end
  end
end
