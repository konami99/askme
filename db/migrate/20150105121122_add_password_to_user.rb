class AddPasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, "varchar(255)"
  end
end
