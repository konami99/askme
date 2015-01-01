class RemoveStatusIdFrom < ActiveRecord::Migration
  def change
    remove_column :questions, :status_id
  end
end
