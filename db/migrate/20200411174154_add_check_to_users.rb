class AddCheckToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :check, :boolean
  end
end
