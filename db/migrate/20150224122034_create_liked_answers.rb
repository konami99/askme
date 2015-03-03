class CreateLikedAnswers < ActiveRecord::Migration
  def change
    create_table :liked_answers do |t|
      t.references :answer, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
