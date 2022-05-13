class RemoveUserToPrototypes < ActiveRecord::Migration[6.0]
  def remove
    remove_column :prototype, :user
  end
  def add
    add_column :prototype, :user, :references, null: false, foreign_key: true
  end
end
