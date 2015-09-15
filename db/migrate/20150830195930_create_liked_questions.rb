class CreateLikedQuestions < ActiveRecord::Migration
  def change
    create_table :liked_questions do |t|
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
