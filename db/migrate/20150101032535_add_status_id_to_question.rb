class AddStatusIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :status_id, :integer
  end
end
