class RemovesUserToPrototypes < ActiveRecord::Migration[6.0]
  def remove
    remove_column :prototypes, :user_id
  end
  def add
    add_column :prototypes, :user_id, :references, null: false, foreign_key: true
  end
end
