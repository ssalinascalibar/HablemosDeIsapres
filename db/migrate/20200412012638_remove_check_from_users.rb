class RemoveCheckFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :check, :boolean
  end
end
