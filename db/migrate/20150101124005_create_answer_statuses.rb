class CreateAnswerStatuses < ActiveRecord::Migration
  def change
    create_table :answer_statuses do |t|
      t.string :name
      t.timestamps
    end
  end
end
