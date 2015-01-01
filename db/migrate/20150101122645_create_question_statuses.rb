class CreateQuestionStatuses < ActiveRecord::Migration
  def change
    create_table :question_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
