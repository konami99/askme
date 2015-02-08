class CreateAnswerAttributes < ActiveRecord::Migration
  def change
    create_table :answer_attributes do |t|

      t.timestamps
    end
  end
end
